package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
	public boolean loginCheck(String userId, String password) throws ClassNotFoundException, SQLException {

		String sql = "SELECT * FROM user WHERE user_id = ? AND password = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			// プレースホルダへの値の設定
			pstmt.setString(1, userId);
			pstmt.setString(2, password);

			// SQLステートメントの実行
			ResultSet res = pstmt.executeQuery();

			// 結果の操作
			if (res.next()) {
				return true;
			}
		}
		return false;
	}

	public int authorityNoCheck(String userId,String password) throws ClassNotFoundException, SQLException {
		
		int i = 0;
		
		String sql = "SELECT authority_no FROM user WHERE user_id = ? AND password = ?";
		
		// データベースへの接続の取得、PreparedStatementの取得
				try(Connection con = ConnectionManager.getConnection();
						PreparedStatement pstmt =  con.prepareStatement(sql)){

					// プレースホルダへの値の設定
					pstmt.setString(1, userId);
					pstmt.setString(2, password);
					
					// SQLステートメントの実行
					ResultSet res = pstmt.executeQuery();

					// 結果の操作
					if(res.next()) {
						i = Integer.parseInt(res.getString("authority_no"));
					}
				}
		return i;
	
	}

}
