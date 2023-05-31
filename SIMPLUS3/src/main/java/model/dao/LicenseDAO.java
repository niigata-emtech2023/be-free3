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
	public int update(EmployeeBean license) throws SQLException,ClassNotFoundException {
		int count = 0;//処理件数

		String sql = "UPDATE employee SET license_code=?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); 
				PreparedStatement pstmt = con.prepareStatement(sql)) {			

			String licenseCode = license.getLicenseCode();

			//プレースホルダへの値の設定
			pstmt.setString(1, licenseCode);


			count = pstmt.executeUpdate();

		}

		return count;
	}
}


