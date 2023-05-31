package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.EmployeeBean;

public class HobbyDAO {
	
	public List<EmployeeBean> selectAll() throws SQLException, ClassNotFoundException {
		
		List<EmployeeBean> hobbyList = new ArrayList<EmployeeBean>();
		
		try(Connection con = ConnectionManager.getConnection();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT hobby_code.hobby_name FROM hobby")){
			
			while(rs.next()) {
				String hobbyCode = rs.getString("hobby_code");
				String hobbyName = rs.getString("hobby_name");
				
				EmployeeBean hobby = new EmployeeBean();
				hobby.setHobbyCode(hobbyCode);
				hobby.setHobbyName(hobbyName);
				
				hobbyList.add(hobby);
			}
		}
		return hobbyList;
	}
	
	public int insert(String employeeCode) throws SQLException, ClassNotFoundException{
		
		int cnt = 0;
		
		
		return cnt;
	}
	
	public int update(EmployeeBean employee) throws SQLException, ClassNotFoundException {
		
		int count = 0;
		
		String sql = "UPDATE employee SET hobby_code =?, self_introduction = ? WHERE employee_code = ?";
		
		try(Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			String hobbyCode = employee.getHobbyCode();
			String selfIntroduction = employee.getSelfintroduction();
			String employeeCode = employee.getEmployeeCode();
			
			pstmt.setString(1,hobbyCode);
			pstmt.setString(2, selfIntroduction);
			pstmt.setString(3, employeeCode);
			
			count = pstmt.executeUpdate();
		}
		
		return count;
	}
	
//	public int update(HobbyBean hobby) throws SQLException, ClassNotFoundException {
//		
//		int cnt = 0;
//		
//		String sql = "UPDATE hobby SET hobby_name=? WHERE hobby_code=?";
//		
//		try(Connection con = ConnectionManager.getConnection();
//				PreparedStatement pstmt = con.prepareStatement(sql)){
//			
//			String hobbyCode = hobby.getHobbyCode();
//			String hobbyName = hobby.getHobbyName();
//			
//			pstmt.setString(1, hobbyName);
//			pstmt.setString(2, hobbyCode);
//			
//			cnt = pstmt.executeUpdate();
//		}
//		
//		return cnt;
//	}
	
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
