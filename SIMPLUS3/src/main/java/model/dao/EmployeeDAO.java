package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.EmployeeBean;

public class EmployeeDAO {
	/**
	 * すべての従業員のリストを返します。
	 * 
	 * @return 従業員のリスト
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public List<EmployeeBean> selectAll() throws SQLException, ClassNotFoundException {

		List<EmployeeBean> employeeList = new ArrayList<EmployeeBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("SELECT t1.employee_code,t1.sur_name,"
						+ "t1.first_name,t1.sur_kana_name,t1.first_kana_name,t2.section_name "
						+ "FROM employee t1 LEFT OUTER JOIN section t2 ON t1.section_code = t2.section_code")) {

			// 結果の操作
			while (res.next()) {
				String employeeCode = res.getString("employeeCode");
				String surName = res.getString("surName");
				String firstName = res.getString("firstName");
				String surKanaName = res.getString("surKanaName");
				String firstKanaName = res.getString("firstKanaName");
				//String gender = res.getString("gender");
				//Date birthDate = res.getDate("birthDate");
				String sectionCode = res.getString("sectionCode");
				//String license_code = res.getString("license_code");
				//String hobbyCode = res.getString("hobbyCode");
				//Date joiningDate = res.getDate("joiningDate");
				//String mail = res.getString("mail");
				//String tel = res.getString("tel");
				//String address = res.getString("address");
				//String selfintroduction = res.getString("selfintroduction");

				EmployeeBean employee = new EmployeeBean();
				employee.setEmployeeCode(employeeCode);
				employee.setSurName(surName);
				employee.setFirstName(firstName);
				employee.setSurKanaName(surKanaName);
				employee.setFirstKanaName(firstKanaName);
				//employee.setGender(gender);
				//employee.setBirthDate(birthDate);
				employee.setSectionCode(sectionCode);
				//employee.setLicense_code(license_code);
				//employee.setHobbyCode(hobbyCode);
				//employee.setJoiningDate(joiningDate);
				//employee.setMail(mail);
				//employee.setTel(tel);
				//employee.setAddress(address);
				//employee.setSelfintroduction(selfintroduction);

				employeeList.add(employee);
			}
		}
		return employeeList;
	}

	/**
	 * 趣味
	 * 
	 * @param hobbyCode
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public List<EmployeeBean> selectEmployee(String employeeCode) throws SQLException, ClassNotFoundException {

		List<EmployeeBean> employeeList = new ArrayList<EmployeeBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("SELECT * FROM employee WHERE employee_code = ?")) {

			// 結果の操作
			while (res.next()) {
				String surName = res.getString("surName");
				String firstName = res.getString("firstName");
				String surKanaName = res.getString("surKanaName");
				String firstKanaName = res.getString("firstKanaName");
				String gender = res.getString("gender");
				Date birthDate = res.getDate("birthDate");
				String sectionCode = res.getString("sectionCode");
				String license_code = res.getString("license_code");
				String hobbyCode = res.getString("hobbyCode");
				Date joiningDate = res.getDate("joiningDate");
				String mail = res.getString("mail");
				String tel = res.getString("tel");
				String address = res.getString("address");
				String selfintroduction = res.getString("selfintroduction");

				EmployeeBean employee = new EmployeeBean();
				employee.setEmployeeCode(employeeCode);
				employee.setSurName(surName);
				employee.setFirstName(firstName);
				employee.setSurKanaName(surKanaName);
				employee.setFirstKanaName(firstKanaName);
				employee.setGender(gender);
				employee.setBirthDate(birthDate);
				employee.setSectionCode(sectionCode);
				employee.setLicense_code(license_code);
				employee.setHobbyCode(hobbyCode);
				employee.setJoiningDate(joiningDate);
				employee.setMail(mail);
				employee.setTel(tel);
				employee.setAddress(address);
				employee.setSelfintroduction(selfintroduction);

				employeeList.add(employee);
			}
		}
		return employeeList;
	}

	/**
	 * 従業員追加
	 * 
	 * @param employee
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public int insert(EmployeeBean employee) throws SQLException, ClassNotFoundException {
		int cnt = 0; // 処理件数
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO employee VALUES(?,?,?,?,?,?,?,?,?,?,?)")) {

			/**
			 * データ受け取り
			 */
			String employeeCode = employee.getEmployeeCode();
			String surName = employee.getSurName();
			String firstName = employee.getFirstName();
			String surKanaName = employee.getSurKanaName();
			String firstKanaName = employee.getFirstKanaName();
			String gender = employee.getGender();
			Date birthDate = employee.getBirthDate();
			String sectionCode = employee.getSectionCode();
			Date joiningDate = employee.getJoiningDate();
			String mail = employee.getMail();
			String tel = employee.getTel();
			String address = employee.getAddress();

			// プレースホルダへの値の設定
			pstmt.setString(1, employeeCode);
			pstmt.setString(2, surName);
			pstmt.setString(3, firstName);
			pstmt.setString(4, surKanaName);
			pstmt.setString(5, firstKanaName);
			pstmt.setString(6, gender);
			pstmt.setDate(7, birthDate);
			pstmt.setString(8, sectionCode);
			pstmt.setDate(9, joiningDate);
			pstmt.setString(10, mail);
			pstmt.setString(11, tel);
			pstmt.setString(12, address);

			// SQLステートメントの実行
			cnt = pstmt.executeUpdate();

		}

		return cnt;
	}

	/**
	 * 指定された内容の従業員情報を更新します。
	 * 
	 * @param employee 従業員オブジェクト
	 * @return 処理件数
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public int update(EmployeeBean employee) throws SQLException, ClassNotFoundException {
		int cnt = 0; // 処理件数

		String sql = "UPDATE employee SET surName = ?, firstName = ?, surKanaName = ?,"
				+ "firstKanaName = ?, gender = ?, birthDate = ?, sectionCode = ?, license_code = ?,"
				+ "hobbyCode = ?, joiningDate = ?, mail = ?, tel = ?, address = ?, selfintroduction = ? "
				+ "WHERE employeeCode = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			/**
			 * データ受け取り
			 */
			String employeeCode = employee.getEmployeeCode();
			String surName = employee.getSurName();
			String firstName = employee.getFirstName();
			String surKanaName = employee.getSurKanaName();
			String firstKanaName = employee.getFirstKanaName();
			String gender = employee.getGender();
			Date birthDate = employee.getBirthDate();
			String sectionCode = employee.getSectionCode();
			String license_code = employee.getLicense_code();
			String hobbyCode = employee.getHobbyCode();
			Date joiningDate = employee.getJoiningDate();
			String mail = employee.getMail();
			String tel = employee.getTel();
			String address = employee.getAddress();

			// プレースホルダへの値の設定
			pstmt.setString(1, employeeCode);
			pstmt.setString(2, surName);
			pstmt.setString(3, firstName);
			pstmt.setString(4, surKanaName);
			pstmt.setString(5, firstKanaName);
			pstmt.setString(6, gender);
			pstmt.setDate(7, birthDate);
			pstmt.setString(8, sectionCode);
			pstmt.setString(9, license_code);
			pstmt.setString(10, hobbyCode);
			pstmt.setDate(11, joiningDate);
			pstmt.setString(12, mail);
			pstmt.setString(13, tel);
			pstmt.setString(14, address);

			// SQLステートメントの実行
			cnt = pstmt.executeUpdate();
		}
		return cnt;
	}

	public int Delete(EmployeeBean employee) throws SQLException, ClassNotFoundException {
		int cnt = 0; // 処理件数

		String sql = "DELETE FROM employee WHERE employeeCode = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			String employeeCode = employee.getEmployeeCode();
			pstmt.setString(1, employeeCode);

			cnt = pstmt.executeUpdate();
		}
		return cnt;
	}

}
