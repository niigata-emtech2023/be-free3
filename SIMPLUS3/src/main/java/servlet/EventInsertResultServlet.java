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
 * Servlet implementation class EventInsertResultServlet
 */
@WebServlet("/event-insert-result-servlet")
public class EventInsertResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventInsertResultServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストオブジェクトのエンコーディング方式の指定
		request.setCharacterEncoding("UTF-8");

		// セッションオブジェクトの取得
		HttpSession session = request.getSession();

		// セッションスコープからの属性値の取得
		EventBean employee = (EventBean) session.getAttribute("event");

		// DAOの生成
		EventDAO dao = new EventDAO();

		int count = 0; // 処理件数

		try {
			// DAOの利用
			count = dao.insert(employee);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		// リクエストスコープへの属性の設定
		request.setAttribute("count", count);

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher("event-insert-result.jsp");
		rd.forward(request, response);
	}

}
