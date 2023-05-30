<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>イベント情報編集画面</title>
</head>
<body>
       <jsp:useBean id="event" class="model.entity.EventBean" scope="session"/>
	
	<form action="event-update-confirm-servlet" method="post">
	
		イベントコード：<jsp:getProperty name="event" property="eventCode" /><br>
		イベント名：		  <input type="text" name="eventName" value="<jsp:getProperty name="event" property="eventName" />"><br>
		開催日時：		  <input type="date" name="eventDate" value="<jsp:getProperty name="event" property="eventDate" />"><br>
		開催場所：    <input type="text" name="eventplace" value="<jsp:getProperty name="event" property="eventPlace" />"><br>
		開催者名：    <input type="text" name="organizer" value="<jsp:getProperty name="event" property="organizer" />"><br>
		自由記述:<input type="text" name="selfIntroduction" value="<jsp:getProperty name="event" property="selfIntroduction" />"><br>
	
	
		 <input type="submit" value="確認">
     </form>
     
     <form action="event-detail-servlet" method="POST">
		<input type="hidden" name="eventCode" value="<%=event.getEventCode()%>">
		<input type="submit" value="戻る">
	</form>

</body>
</html>