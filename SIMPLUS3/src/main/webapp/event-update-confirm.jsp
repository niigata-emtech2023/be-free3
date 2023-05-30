<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント編集確認画面</title>
</head>
<body>
     <%
		request.setCharacterEncoding("UTF-8");
	%>
    イベント情報を以下の内容で変更します。よろしいですか？
    <jsp:setProperty name= "event" property= "eventName" param= "eventName" />
	<jsp:setProperty name= "event" property= "eventDate" param= "eventDate" />
	<jsp:setProperty name= "event" property= "eventPlace" param= "eventPlace" />
	<jsp:setProperty name= "event" property= "organizer" param= "organizer" />
	<jsp:setProperty name= "event" property= "selfIntroduction" param= "selfIntroduction" />
	
	    イベントコード： <jsp:getProperty name= "event" property= "eventCode" /><br>
		イベント名：		   <jsp:getProperty name= "event" property= "eventName" /><br>
		開催日時：		   <jsp:getProperty name= "event" property= "eventDate" /><br>
		開催場所：	   <jsp:getProperty name= "event" property= "eventPlace" /><br>
		開催者名：	   <jsp:getProperty name= "event" property= "organizer" /><br>
	　　自由記述:<jsp:getProperty name= "event" property= "selfIntroduction" /><br>
	
	<form action="event-update-servlet" method="post">
		<input type= "submit" value= "変更する">
	</form>
	
	<form action="event-update-form-servlet" method="POST">
		<input type= "submit" value= "戻る">
	</form>
	
</body>
</html>