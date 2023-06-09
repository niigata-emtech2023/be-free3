package model.dao;

import java.sql.Connection;
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
				String employeeCode = res.getString("employee_code");
				String surName = res.getString("sur_name");
				String firstName = res.getString("first_name");
				String surKanaName = res.getString("sur_kana_name");
				String firstKanaName = res.getString("first_kana_name");
				//String gender = res.getString("gender");
				//Date birthDate = res.getDate("birthDate");
//				String sectionCode = res.getString("sectionCode");
				String sectionName = res.getString("section_name");
				//String license_code = res.getString("license_code");
				//String hobbyCode = res.getString("hobbyCode");
				//Date joiningDate = res.getDate("joiningDate");
				//String mail = res.getString("mail");
				//String tel = res.getString("tel");
				//String address = res.getString("address");
				//String selfintroduction = res.getString("selfintroduction");

//				System.out.println(employeeCode);
				
				EmployeeBean employee = new EmployeeBean();
				employee.setEmployeeCode(employeeCode);
				employee.setSurName(surName);
				employee.setFirstName(firstName);
				employee.setSurKanaName(surKanaName);
				employee.setFirstKanaName(firstKanaName);
				//employee.setGender(gender);
				//employee.setBirthDate(birthDate);
//				employee.setSectionCode(sectionCode);
				employee.setSectionName(sectionName);
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
	
	public List<EmployeeBean> search(String hobbyCode) throws SQLException, ClassNotFoundException {

		List<EmployeeBean> employeeList = new ArrayList<EmployeeBean>();

		String sql = "SELECT t1.employee_code, t1.sur_name, t1.first_name, t1.sur_kana_name,t1.first_kana_name,t2.section_name FROM employee t1 LEFT OUTER JOIN section t2 ON t1.section_code = t2.section_code WHERE t1.hobby_code = ?";
		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
					try (Connection con = ConnectionManager.getConnection();
						PreparedStatement pstmt = con.prepareStatement(sql);) {

					pstmt.setString(1, hobbyCode);
		
					ResultSet res = pstmt.executeQuery();
					
			// 結果の操作
			while (res.next()) {
				String employeeCode = res.getString("employee_code");
				String surName = res.getString("sur_name");
				String firstName = res.getString("first_name");
				String surKanaName = res.getString("sur_kana_name");
				String firstKanaName = res.getString("first_kana_name");
				String sectionName = res.getString("section_name");
				
				EmployeeBean employee = new EmployeeBean();
				employee.setEmployeeCode(employeeCode);
				employee.setSurName(surName);
				employee.setFirstName(firstName);
				employee.setSurKanaName(surKanaName);
				employee.setFirstKanaName(firstKanaName);
				employee.setSectionName(sectionName);

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
	public EmployeeBean selectEmployee(String employeeCode) throws SQLException, ClassNotFoundException {

		//List<EmployeeBean> employeeList = new ArrayList<EmployeeBean>();
		EmployeeBean employee = new EmployeeBean();
		
		//String sql = "SELECT * FROM employee WHERE employee_code = ?";
		String sql = "SELECT t1.employee_code, t1.sur_name, t1.first_name,"
				+ "t1.sur_kana_name, t1.first_kana_name, t2.gender_name, t1.birth_date,\n"
				+ "t3.section_name, t4.license_name, t5.hobby_name, t1.joining_date,\n"
				+ "t1.mail, t1.tel, t1.address, t1.self_introduction FROM employee t1\n"
				+ "LEFT OUTER JOIN gender t2 ON t1.gender = t2.gender\n"
				+ "LEFT OUTER JOIN section t3 ON t1.section_code = t3.section_code\n"
				+ "LEFT OUTER JOIN license t4 ON t1.license_code = t4.license_code\n"
				+ "LEFT OUTER JOIN hobby t5 ON t1.hobby_code = t5.hobby_code\n"
				+ "WHERE t1.employee_code = ?";

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, employeeCode);
//			
			ResultSet res = pstmt.executeQuery();
//			
//			// 結果の操作
			while (res.next()) {
				employee.setEmployeeCode(res.getString("employee_code"));
				employee.setSurName(res.getString("sur_name"));
				employee.setFirstName(res.getString("first_name"));
				employee.setSurKanaName(res.getString("sur_kana_name"));
				employee.setFirstKanaName(res.getString("first_kana_name"));
//				employee.setGender(res.getString("gender"));
				employee.setGenderName(res.getString("gender_name"));
				employee.setBirthDate(res.getString("birth_date"));
//				employee.setSectionCode(res.getString("section_code"));
				employee.setSectionName(res.getString("section_name"));
//				employee.setLicenseCode(res.getString("license_code"));
				employee.setLicenseName(res.getString("license_name"));
//				employee.setHobbyCode(res.getString("hobby_code"));
				employee.setHobbyName(res.getString("hobby_name"));
				employee.setJoiningDate(res.getString("joining_date"));
				employee.setMail(res.getString("mail"));
				employee.setTel(res.getString("tel"));
				employee.setAddress(res.getString("address"));
				employee.setSelfintroduction(res.getString("self_introduction"));
			}
//				String surName = res.getString("sur_name");
//				String firstName = res.getString("first_name");
//				String surKanaName = res.getString("sur_kana_name");
//				String firstKanaName = res.getString("first_kana_name");
//				String gender = res.getString("gender");
//				String birthDate = res.getString("birth_date");
//				String sectionCode = res.getString("section_code");
//				String license_code = res.getString("license_code");
//				String hobbyCode = res.getString("hobby_code");
//				String joiningDate = res.getString("joining_date");
//				String mail = res.getString("mail");
//				String tel = res.getString("tel");
//				String address = res.getString("address");
//				String selfintroduction = res.getString("self_introduction");
//
//				EmployeeBean employee = new EmployeeBean();
//				employee.setEmployeeCode(employeeCode);
//				employee.setSurName(surName);
//				employee.setFirstName(firstName);
//				employee.setSurKanaName(surKanaName);
//				employee.setFirstKanaName(firstKanaName);
//				employee.setGender(gender);
//				employee.setBirthDate(birthDate);
//				employee.setSectionCode(sectionCode);
//				employee.setLicense_code(license_code);
//				employee.setHobbyCode(hobbyCode);
//				employee.setJoiningDate(joiningDate);
//				employee.setMail(mail);
//				employee.setTel(tel);
//				employee.setAddress(address);
//				employee.setSelfintroduction(selfintroduction);
//
//				employeeList.add(employee);
//		}
		}
		return employee;
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
		int count = 0; // 処理件数
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO employee(employee_code,sur_name,first_name,sur_kana_name,first_kana_name,gender,birth_date,section_code,joining_date,mail,tel,address) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)")) {

			/**
			 * データ受け取り
			 */
			String employeeCode = employee.getEmployeeCode();
			String surName = employee.getSurName();
			String firstName = employee.getFirstName();
			String surKanaName = employee.getSurKanaName();
			String firstKanaName = employee.getFirstKanaName();
			String gender = employee.getGender();
			String birthDate = employee.getBirthDate();
			String sectionCode = employee.getSectionCode();
			String joiningDate = employee.getJoiningDate();
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
			pstmt.setString(7, birthDate);
			pstmt.setString(8, sectionCode);
			pstmt.setString(9, joiningDate);
			pstmt.setString(10, mail);
			pstmt.setString(11, tel);
			pstmt.setString(12, address);

			// SQLステートメントの実行
			count = pstmt.executeUpdate();

		}

		return count;
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
		
		String sql = "UPDATE employee SET sur_name = ?,first_name = ?,sur_kana_name = ?,first_kana_name = ?,gender = ?,birth_date = ?,section_code = ?,joining_date = ?,mail = ?,tel = ?,address = ? WHERE employee_code = ?";
		
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
			String birthDate = employee.getBirthDate();
			String sectionCode = employee.getSectionCode();		 
			String joiningDate = employee.getJoiningDate();
			String mail = employee.getMail();
			String tel = employee.getTel();
			String address = employee.getAddress();

			// プレースホルダへの値の設定
			pstmt.setString(1, surName);
			pstmt.setString(2, firstName);
			pstmt.setString(3, surKanaName);
			pstmt.setString(4, firstKanaName);
			pstmt.setString(5, gender);
			pstmt.setString(6, birthDate);
			pstmt.setString(7, sectionCode);
			pstmt.setString(8, joiningDate);
			pstmt.setString(9, mail);
			pstmt.setString(10, tel);
			pstmt.setString(11, address);
			pstmt.setString(12, employeeCode);

			// SQLステートメントの実行
			cnt = pstmt.executeUpdate();
		}
		return cnt;
	}

	public int Delete(String employeeCode) throws SQLException, ClassNotFoundException {
		int cnt = 0; // 処理件数

		String sql = "DELETE FROM employee WHERE employee_code = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, employeeCode);

			cnt = pstmt.executeUpdate();
		}
		return cnt;
	}
	
	public List<EmployeeBean> selectName(String section_code,String gender) throws SQLException, ClassNotFoundException {

		List<EmployeeBean> employeeList = new ArrayList<EmployeeBean>();
		
		String sql = "SELECT t3.section_name,t2.gender_name\n"
				+"FROM employee t1 LEFT OUTER JOIN gender t2 ON t1.? = t2.gender\n"
				+"LEFT OUTER JOIN section t3 ON t1.? = t3.section_code";
		
		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, gender);
			pstmt.setString(2, section_code);
			
			
			ResultSet res = pstmt.executeQuery();
			
			// 結果の操作
			while (res.next()) {
				String genderName = res.getString("gender_name");
				String sectionName = res.getString("section_name");
				
				EmployeeBean employee = new EmployeeBean();
				employee.setGenderName(genderName);
				employee.setSectionName(sectionName);
				

				employeeList.add(employee);
			}
		}
		return employeeList;
	}

}
