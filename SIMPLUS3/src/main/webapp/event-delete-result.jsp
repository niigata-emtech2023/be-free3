<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>削除完了画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">
</head>
<body>
<%@ include file="header.jsp" %>
	<h1>社内イベント情報削除完了画面</h1>
	<div class="confirm-field">
	<%
		EventBean event = (EventBean) session.getAttribute("event");
	%>
	
	<%=event.getEventName() %>の削除が完了しました。
	
	<form action="event-list-servlet" method="post">
	<input type="submit" value="一覧画面に戻る" class="c-form-submit-button3">
	</form>
	</div>
</body>
</html>