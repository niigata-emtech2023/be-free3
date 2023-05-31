package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.EmployeeDAO;
import model.entity.EmployeeBean;

/**
 * Servlet implementation class EmployeeSearchServlet
 */
@WebServlet("/employee-search-servlet")
public class EmployeeSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeSearchServlet() {
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
		// リクエストオブジェクトのエンコーディング方式の指定
				request.setCharacterEncoding("UTF-8");
				List<EmployeeBean> employeeList = null;

				// リクエストパラメータの取得
				String hobbyCode = request.getParameter("hobbyName");

				// DAOの生成
				EmployeeDAO dao = new EmployeeDAO();

				try {
					// DAOの利用
					employeeList = dao.search(hobbyCode);

				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				
				// リクエストスコープへの属性の設定
				request.setAttribute("employeeList", employeeList);

				// リクエストの転送
				RequestDispatcher rd = request.getRequestDispatcher("employee-search-list.jsp");
				rd.forward(request, response);

			}

		}
