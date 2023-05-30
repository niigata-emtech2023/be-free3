<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント削除エラー</title>
</head>
<body>
	<h1>社内イベント情報削除エラー画面</h1>
	
	<%
		EventBean event = (EventBean) session.getAttribute("event");
	%>
	
	<%=event.getEventName() %>を削除できませんでした。
	
	<form action="event-list-servlet" method="post">
	<input type="submit" value="一覧画面に戻る">
	</form>
</body>
</html>