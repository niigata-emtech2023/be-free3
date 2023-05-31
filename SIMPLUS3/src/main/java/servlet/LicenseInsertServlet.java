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

import model.dao.LicenseDAO;
import model.entity.EmployeeBean;

/**
 * Servlet implementation class LicenseInsertServlet
 */
@WebServlet("/license-insert-servlet")
public class LicenseInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LicenseInsertServlet() {
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
				
				// セッションオブジェクトの取得
				HttpSession session = request.getSession();

				// セッションスコープからの属性値の取得
				EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");

				// DAOの生成
				LicenseDAO dao = new LicenseDAO();

				int count = 0; //処理件数

				try {
					// DAOの利用
					count = dao.update(employee);
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}

				// リクエストスコープへの属性の設定
				request.setAttribute("count", count);

				// リクエストの転送
				RequestDispatcher rd = request.getRequestDispatcher("license-insert-result.jsp");
				rd.forward(request, response);
	}

}
