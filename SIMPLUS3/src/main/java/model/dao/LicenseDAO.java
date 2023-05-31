package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.entity.EmployeeBean;

public class LicenseDAO {
	public int insert(EmployeeBean license) throws SQLException,ClassNotFoundException {
		int count = 0;//処理件数

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO license(license_code) VALUES(?)")) {



			String licenseCode = license.getLicenseCode();



			//プレースホルダへの値の設定
			pstmt.setString(1, licenseCode);


			count = pstmt.executeUpdate();

		}

		return count;
	}
	public int update(EmployeeBean employee) throws SQLException,ClassNotFoundException {
		int count = 0;//処理件数
		
		//変数sqlにsql文を格納
		String sql = "UPDATE employee SET license_code=? WHERE employee_code = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); 
				PreparedStatement pstmt = con.prepareStatement(sql)) {			

			String licenseCode = employee.getLicenseCode();
			String employeeCode = employee.getEmployeeCode();

			//プレースホルダへの値の設定
			pstmt.setString(1, licenseCode);
			pstmt.setString(2, employeeCode);


			count = pstmt.executeUpdate();

		}

		return count;
	}
}


