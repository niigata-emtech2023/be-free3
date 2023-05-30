<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント詳細画面</title>
</head>
<body>
	<h1>社内イベント詳細画面</h1>
	
	<%
		EventBean event = (EventBean) session.getAttribute("event");
	%>
	<form action="?" method="post">
		<table border=1>
		<tr><th>イベント名</th><td><%=event.getEventName() %></td></tr>
		<tr><th>開催者名</th><td><%=event.getOrganizer() %></td></tr>
		<tr><th>開催日時</th><td><%=event.getEventDate() %></td></tr>
		<tr><th>開催場所</th><td><%=event.getEventPlace() %></td></tr>
		<tr><th>イベント詳細</th><td><%=event.getSelfIntroduction() %></td></tr>
		</table>
		<input type="radio" name="join" value="参加">参加
		<input type="radio" name="join" value="不参加">不参加
		<input type="submit" formaction="" value="送信"><br>
		
		<input type="submit" formaction="event-list.jsp" value="一覧に戻る">
		<input type="submit" formaction="event-delete-form-servlet" value="削除">
		<input type="submit" formaction="event-update-form-servlet" value="編集">
	</form>

</body>
</html>