<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報削除確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">
</head>
<body>
<%@ include file="header.jsp" %>
	<h1>社内イベント情報削除確認画面</h1>
	<div class="confirm-field">
	<p>この内容を削除しますか？</p>
	<%
		EventBean event = (EventBean) session.getAttribute("event");
	%>
	<form action="?" method="post">
		<table>
		<tr><th>イベント名</th><td><%=event.getEventName() %></td></tr>
		<tr><th>開催者名</th><td><%=event.getOrganizer() %></td></tr>
		<tr><th>開催日時</th><td><%=event.getEventDate() %></td></tr>
		<tr><th>開催場所</th><td><%=event.getEventPlace() %></td></tr>
		<tr><th>イベント詳細</th><td><%=event.getSelfIntroduction() %></td></tr>
		</table>
	
		<div class="double_submit">
		<ul>
    		<li>
			<input type="submit" formaction="event-detail-servlet" value="戻る" class="c-form-back-button">
			</li>
			<li>
			<input type="submit" formaction="event-delete-servlet" value="削除" class="c-form-submit-button">
			</li>
		</ul>
		</div>
		</form>
	</div>
</body>
</html>