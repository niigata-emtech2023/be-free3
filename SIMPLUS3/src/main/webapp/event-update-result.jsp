<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント編集完了画面</title>
</head>
<body>
       <%
		int processingNumber = (Integer) request.getAttribute("cnt");
		if (processingNumber > 0) {
	%>
	次のデータを変更登録しました。<br>
	<%
		} else {
	%>
	次のデータを変更登録できませんでした。<br>
	<%
		}
	%>
	<jsp:useBean id="event" scope="session" class="model.entity.EventBean" />
	    イベントコード：<jsp:getProperty name="event" property="eventCode" /><br>
		イベント名:			  <jsp:getProperty name="event" property="eventName" /><br>
		開催日時：		  <jsp:getProperty name="event" property="eventDate" /><br>
		開催場所：	  <jsp:getProperty name="event" property="eventPlace" /><br>
		開催者：	  <jsp:getProperty name="event" property="organizer" /><br>
		自由記述：	  <jsp:getProperty name="event" property="selfIntroduction" /><br>
		
		<form action="event-list.jsp" method="POST">
		<input type="submit" value="メニュー画面に戻る">
	</form>

	<% session.invalidate(); %>
</body>
</html>