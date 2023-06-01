<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>参加可否画面</title>
</head>
<body>
	<h1>社内イベント参加可否画面</h1>
	<%
		EventBean event = (EventBean) session.getAttribute("event");
		String str = (String) request.getAttribute("join");
	%>
	
	<%=event.getEventName() %>は、<%=str %>で受け付けました。
	<br>
	<form action="event-detail.jsp" method="post">
	<input type="submit" value="詳細画面に戻る">
	</form>
</body>
</html>