package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.entity.EventBean;

/**
 * Servlet implementation class EventInsertConfirmServlet
 */
@WebServlet("/event-insert-confirm-servlet")
public class EventInsertConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventInsertConfirmServlet() {
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
		
		request.setCharacterEncoding("UTF-8");
		//リクエストパラメータの取得
		String eventCode = request.getParameter("eventCode");
		String eventName = request.getParameter("eventName");
		String organizer = request.getParameter("organizer");
		String eventDate = request.getParameter("eventDate");
		String eventPlace = request.getParameter("eventPlace");
		String selfIntroduction = request.getParameter("selfIntroduction");
		
		EventBean event = new EventBean();
		event.setEventCode(eventCode);
		event.setEventName(eventName);
		event.setOrganizer(organizer);
		event.setEventDate(eventDate);
		event.setEventCode(eventPlace);
		event.setSelfIntroduction(selfIntroduction);
		
		HttpSession session = request.getSession();
		 
		session.setAttribute("event", event);
		
		RequestDispatcher rd = request.getRequestDispatcher("event-insert-confirm.jsp");
		rd.forward(request, response);
	}

}
