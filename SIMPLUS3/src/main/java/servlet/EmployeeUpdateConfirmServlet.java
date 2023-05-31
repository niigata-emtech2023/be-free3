package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.entity.EmployeeBean;

/**
 * Servlet implementation class EmployeeUpdateConfirmServlet
 */
@WebServlet("/employee-update-confirm-servlet")
public class EmployeeUpdateConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeUpdateConfirmServlet() {
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
		request.setCharacterEncoding("UTF-8");
		
		try {
		//リクエストパラメータの取得 
		String gender = request.getParameter("gender");
		String sectionCode = request.getParameter("sectionCode");
		
		EmployeeBean employee = new EmployeeBean();
		employee.setGender(gender);
		employee.setSectionCode(sectionCode);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("employee", employee);
		}catch(Exception e) {
			e.printStackTrace();
		}
		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher("employee-update-confirm.jsp");
		rd.forward(request, response);
	}

}
