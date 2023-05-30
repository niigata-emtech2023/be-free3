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
	 * @return 社内イベントの一覧
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public List<EventBean> selectAll() throws SQLException, ClassNotFoundException {

		List<EventBean> eventList = new ArrayList<EventBean>();

		// データベースへの接続の取得、Statementの取得、SQLステートメントの実行
		try (Connection con = ConnectionManager.getConnection();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery("SELECT event_name,event_date, FROM event")) {

			// 結果の操作
			while (res.next()) {
				String event_code = res.getString("event_code");
				String event_date = res.getString("event_date");
				String event_name = res.getString("event_name");

				EventBean event = new EventBean();
				event.setEventCode(event_code);
				event.setEventDate(event_date);
				event.setEventName(event_name);
				eventList.add(event);
			}
		}
		return eventList;
	}

	/**
	 * 社内イベント詳細
	 * 
	 * @param eventDate
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public EventBean selectEvent(String eventDate) throws SQLException, ClassNotFoundException {

		EventBean event = new EventBean();

		String sql = "SELECT event_name,organizer,event_date,event_place,self_introduction FROM event WHERE event_code = ?";

		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, eventDate);
//			
			ResultSet res = pstmt.executeQuery();

			while (res.next()) {
				event.setEventName(res.getString("event_name"));
				event.setOrganizer(res.getString("organizer"));
				event.setEventDate(res.getString("event_date"));
				event.setEventPlace(res.getString("event_place"));
				event.setSelfIntroduction(res.getString("self_introduction"));
			}
		}
		return event;
	}

	/**
	 * 社内イベントの登録
	 * 
	 * @param event
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public int insert(EventBean event) throws SQLException, ClassNotFoundException {
		int count = 0; // 処理件数
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pstmt = con.prepareStatement(
						"INSERT INTO event(event_code,event_name,event_date,event_place,organizer,self_introduction) VALUES(?,?,?,?,?,?)")) {

			String eventCode = event.getEventCode();
			String eventName = event.getEventName();
			String Organizer = event.getOrganizer();
			String EventDate = event.getEventDate();
			String EventPlace = event.getEventPlace();
			String SelfIntroduction = event.getSelfIntroduction();

			// プレースホルダへの値の設定
			pstmt.setString(1, eventCode);
			pstmt.setString(2, eventName);
			pstmt.setString(3, EventDate);
			pstmt.setString(4, EventPlace);
			pstmt.setString(5, Organizer);
			pstmt.setString(6, SelfIntroduction);

			// SQLステートメントの実行
			count = pstmt.executeUpdate();
		}
		return count;
	}

	public int update(EventBean event) throws SQLException, ClassNotFoundException {
		int cnt = 0; // 処理件数

		String sql = "UPDATE event SET event_name = ?,event_date = ?,event_place = ?,organizer = ?,self_introduction = ? WHERE event_code = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			/**
			 * データ受け取り
			 */
			String EventCode = event.getEventCode();
			String EventName = event.getEventName();
			String Organizer = event.getOrganizer();
			String EventDate = event.getEventDate();
			String EventPlace = event.getEventPlace();
			String SelfIntroduction = event.getSelfIntroduction();

			// プレースホルダへの値の設定
			pstmt.setString(1, EventName);
			pstmt.setString(2, EventDate);
			pstmt.setString(3, EventPlace);
			pstmt.setString(4, Organizer);
			pstmt.setString(5, SelfIntroduction);
			pstmt.setString(6, EventCode);

			// SQLステートメントの実行
			cnt = pstmt.executeUpdate();

		}
		return cnt;
	}

	public int Delete(String eventCode) throws SQLException, ClassNotFoundException {
		int cnt = 0; // 処理件数

		String sql = "DELETE FROM event WHERE event_code = ?";

		// データベースへの接続の取得、PreparedStatementの取得
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, eventCode);

			cnt = pstmt.executeUpdate();
		}
		return cnt;
	}
}
