<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報削除画面</title>
</head>
<body>
	<h1>社内イベント情報削除画面</h1>
	
	<%
		EventBean event = (EventBean) session.getAttribute("event");
	%>
	<form action="event-delete-comfirm-servlet" method="post">
		<table border=1>
		<tr><th>イベント名</th><td><%=event.getEventName() %></td></tr>
		<tr><th>開催者名</th><td><%=event.getOrganizer() %></td></tr>
		<tr><th>開催日時</th><td><%=event.getEventDate() %></td></tr>
		<tr><th>開催場所</th><td><%=event.getEventPlace() %></td></tr>
		<tr><th>イベント詳細</th><td><%=event.getSelfIntroduction() %></td></tr>
		</table>
	
		この内容を削除しますか？
		<input type="submit" formaction="event-detail.jsp" value="戻る">
		<input type="submit" formaction="event-delete-comfirm-servlet" value="削除">
		</form>
</body>
</html>