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
 * Servlet implementation class HobbyInsertConfirmServlet
 */
@WebServlet("/hobby-insert-confirm-servlet")
public class HobbyInsertConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HobbyInsertConfirmServlet() {
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
		// リクエストオブジェクトのエンコーディング方式の指定
				request.setCharacterEncoding("UTF-8");
				// リクエストパラメータの取得
				String employeeCode = request.getParameter("employeeCode");
				String hobbyCode = request.getParameter("hobbyName");
				String selfIntroduction = request.getParameter("selfIntroduction");
				
				EmployeeBean employee = new EmployeeBean();
				employee.setEmployeeCode(employeeCode);
				employee.setHobbyCode(hobbyCode);
				employee.setSelfintroduction(selfIntroduction);
				
				
				HttpSession session = request.getSession();
				 
				 session.setAttribute("employee", employee);
				 
				 RequestDispatcher rd = request.getRequestDispatcher("hobby-record-confirm.jsp");
				 rd.forward(request, response);
	}

}
