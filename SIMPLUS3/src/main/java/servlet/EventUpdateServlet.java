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

import model.entity.EventBean;

/**
 * Servlet implementation class EventUpdateServlet
 */
@WebServlet("/event-update-servlet")
public class EventUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventUpdateServlet() {
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
		// セッションオブジェクトの取得
				HttpSession session = request.getSession();

				// セッションスコープからの属性値の取得
				EventBean event = (EventBean) session.getAttribute("event");

				// DAOの生成
				EventDAO dao = new EventDAO();

				int processingNumber = 0; // 処理件数

				try {
					// DAOの利用
					processingNumber = dao.update(event);
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}

				// リクエストスコープへの属性の設定
				request.setAttribute("processingNumber", processingNumber);

				// リクエストの転送
				RequestDispatcher rd = request.getRequestDispatcher("event-update-result.jsp");
				rd.forward(request, response);
	}

}
