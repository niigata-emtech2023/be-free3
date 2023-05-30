package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.EmployeeDAO;
import model.entity.EmployeeBean;

/**
 * Servlet implementation class EmployeeInsertConfirmServlet
 */
@WebServlet("/employee-insert-confirm-servlet")
public class EmployeeInsertConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeInsertConfirmServlet() {
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
		request.setCharacterEncoding("UTF-8");
		// リクエストパラメータの取得
		String code = request.getParameter("code");
		String sur_name = request.getParameter("sur_name");
		String first_name = request.getParameter("first_name");
		String sur_kana_name=request.getParameter("sur_kana_name");
		String first_kana_name=request.getParameter("first_kana_name");
		String mail=request.getParameter("mail");
		String tel=request.getParameter("tel");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		String birthDate =request.getParameter("birth_date");
		String joiningDate=request.getParameter("joining_date");
		String section = request.getParameter("sectionName");

		EmployeeBean employee = new EmployeeBean();
		employee.setEmployeeCode(code);
		employee.setFirstName(first_name);
		employee.setSurName(sur_name);
		employee.setFirstKanaName(first_kana_name);
		employee.setSurKanaName(sur_kana_name);
		employee.setMail(mail);
		employee.setTel(tel);
		employee.setAddress(address);
		employee.setGender(gender);
		employee.setBirthDate(birthDate);
		employee.setJoiningDate(joiningDate);
		employee.setSectionName(section);
		// DAOの生成
	    EmployeeDAO dao = new EmployeeDAO();
		int count = 0; // 処理件数
		try {
			// DAOの利用
			count = dao.insert(employee);
		} catch (ClassNotFoundException | SQLException e) {
			//e.printStackTrace();
		}
		// リクエストスコープへの属性の設定
		request.setAttribute("count", count);
		request.setAttribute("employee", employee);
		RequestDispatcher rd=request.getRequestDispatcher("employee-insert-confirm.jsp");
		rd.forward(request, response);
	}

}


