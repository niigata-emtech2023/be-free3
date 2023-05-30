<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報登録確認画面</title>
</head>
<body>
	<h1>社内イベント情報登録確認画面</h1>
	<jsp:useBean id="event"  class="model.entity.EventBean" scope="session" />
	
	<jsp:setProperty name="event" property="eventCode" param="eventCode" />
	<jsp:setProperty name="event" property="eventName" param="eventName" />
	<jsp:setProperty name="event" property="organizer" param="organizer" />
	<jsp:setProperty name="event" property="eventDate" param="eventDate" />
	<jsp:setProperty name="event" property="eventPlace" param="eventPlace" />
	<jsp:setProperty name="event" property="selfIntroduction" param="selfIntroduction" />
	
	イベントコード:<jsp:getProperty  name="event"  property="eventCode" /><br>
	イベント名:<jsp:getProperty  name="event"  property="eventName" /><br>
	開催者名:<jsp:getProperty  name="event"  property="organizer" /><br>
	開催日時:<jsp:getProperty  name="event"  property="eventDate" /><br>
	開催場所:<jsp:getProperty  name="event"  property="eventPlace" /><br>
	イベント詳細:<jsp:getProperty  name="event"  property="selfIntroduction" /><br>
	
	<form action="event-insert-result-servlet"method="post">
    	<input type="submit" value="確定">
    </form>
    
    <form action="event-insert.jsp" method="post">
    	<input type="hidden" name="employeeCode" value="<%=event.getEventCode()%>">
    <input type="submit" value="戻る">
    </form>
</body>
</html>