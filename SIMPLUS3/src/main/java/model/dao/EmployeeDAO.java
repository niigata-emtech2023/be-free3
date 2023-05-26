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
				ResultSet res = stmt.executeQuery("SELECT * FROM employee")) {

			// 結果の操作
			while (res.next()) {
				String employeeCode = res.getString("employeeCode");
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
	 * 趣味
	 * 
	 * @param hobbyCode
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public List<EmployeeBean> selectHobby(String hobbyCode) throws SQLException, ClassNotFoundException {

		List<EmployeeBean> employeeList = new ArrayList<EmployeeBean>();
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

			String employeeCode = employee.getEmployeeCode();
			String surName = employee.getSurName();
			String firstName = employee.getFirstName();
			String surKanaName = employee.getSurKanaName();

			// プレースホルダへの値の設定
			/*
			 * pstmt.setString(1, code); pstmt.setString(2, name); pstmt.setInt(3, age);
			 * pstmt.setString(4, section);
			 */

			// SQLステートメントの実行
			cnt = pstmt.executeUpdate();

		}

		return cnt;
	}
}
