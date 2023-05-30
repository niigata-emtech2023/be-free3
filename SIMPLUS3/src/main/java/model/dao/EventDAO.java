package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.entity.EventBean;

public class EventDAO {
	/**
	 * すべての従業員のリストを返します。
	 * 
	 * @return 社内イベントのリスト
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public List<EventBean> selectAll() throws SQLException, ClassNotFoundException {

		List<EventBean> eventList = new ArrayList<EventBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("SELECT event_date,event_name FROM event")) {

			// 結果の操作
			while (res.next()) {
				String event_date = res.getString("event_date");
				String event_name = res.getString("event_name");
				
				EventBean event = new EventBean();
				event.setEventDate(event_date);
				event.setEventName(event_name);
				eventList.add(event);
			}
		}
		return eventList;
	}
	
	public EventBean selectEvent(String eventDate) throws SQLException, ClassNotFoundException {
		
		EventBean event = new EventBean();
		
		String sql = "SELECT event_name,organizer,event_date,event_place,self_introduction FROM event WHERE event_code = ?"; 
				
		try(Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setString(1, eventDate);
//			
			ResultSet res = pstmt.executeQuery();
			
			while(res.next()) {
				event.setEventName(res.getString("event_name"));
				event.setEventName(res.getString("organizer"));
				event.setEventName(res.getString("event_date"));
				event.setEventName(res.getString("event_place"));
				event.setEventName(res.getString("self_introduction"));
			}
		}
		return event;
	}

}
