package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.EventDAO;
import model.entity.EventBean;

/**
 * Servlet implementation class EventDeleteServlet
 */
@WebServlet("/event-delete-servlet")
public class EventDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EventDAO dao = new EventDAO();

		HttpSession session = request.getSession();

		EventBean event = (EventBean) session.getAttribute("event");
		String eventCode = event.getEventCode();
		
		int cnt = 0;

		try {
			cnt = dao.Delete(eventCode);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		if(cnt != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("event-delete-result.jsp");
			rd.forward(request, response);

		}else {
			RequestDispatcher rd = request.getRequestDispatcher("event-delete-error.jsp");
			rd.forward(request, response);	

		}
	}
}
