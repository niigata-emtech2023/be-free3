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

import model.dao.EmployeeDAO;
import model.entity.EmployeeBean;

/**
 * Servlet implementation class EmployeeDetail2Servlet
 */
@WebServlet("/employee-detail2-servlet")
public class EmployeeDetail2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeDetail2Servlet() {
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
		
		String employeeCode = request.getParameter("employeeCode");

		// DAOの生成
		EmployeeDAO dao = new EmployeeDAO();

		try {
			EmployeeBean employee = dao.selectEmployee(employeeCode);

			// セッションオブジェクトの取得
			HttpSession session = request.getSession();

			// セッションスコープへの属性の設定
			session.setAttribute("employee", employee);
			
			System.out.println(employee.getEmployeeCode());
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher("employee-detail2.jsp");
		rd.forward(request, response);
	}

}
