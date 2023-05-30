package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.HobbyBean;

public class HobbyDAO {
	
	public List<HobbyBean> selectAll() throws SQLException, ClassNotFoundException {
		
		List<HobbyBean> hobbyList = new ArrayList<HobbyBean>();
		
		try(Connection con = ConnectionManager.getConnection();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM hobby")){
			
			while(rs.next()) {
				String hobbyCode = rs.getString("hobby_code");
				String hobbyName = rs.getString("hobby_name");
				
				HobbyBean hobby = new HobbyBean();
				hobby.setHobbyCode(hobbyCode);
				hobby.setHobbyName(hobbyName);
				
				hobbyList.add(hobby);
			}
		}
		return hobbyList;
	}
	
	public int insert(HobbyBean hobby) throws SQLException, ClassNotFoundException {
		
		int cnt = 0;
		
		String sql = "INSERT INTO Hobby(hobby_code, hobby_name) VALUE (?.?)";
		
		try(Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			String hobbyCode = hobby.getHobbyCode();
			String hobbyName = hobby.getHobbyName();
			
			pstmt.setString(1,hobbyCode);
			pstmt.setString(2, hobbyName);
			
			cnt = pstmt.executeUpdate();
		}
		
		return cnt;
	}
	
	public int update(HobbyBean hobby) throws SQLException, ClassNotFoundException {
		
		int cnt = 0;
		
		String sql = "UPDATE hobby SET hobby_name=? WHERE hobby_code=?";
		
		try(Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			String hobbyCode = hobby.getHobbyCode();
			String hobbyName = hobby.getHobbyName();
			
			pstmt.setString(1, hobbyName);
			pstmt.setString(2, hobbyCode);
			
			cnt = pstmt.executeUpdate();
		}
		
		return cnt;
	}
	
	public int delete (String hobbyCode) throws SQLException, ClassNotFoundException {
		
		int cnt = 0;
		
		String sql = "DELETE FROM hobby WHERE hobby_code=?";
		
		try(Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1,hobbyCode);
			
			cnt = pstmt.executeUpdate();
		}
		return cnt;
	}
}
