<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報登録完了画面</title>
</head>
<body>
<%
    int count = (Integer) request.getAttribute("count");
   	if (count > 0) {
	%>
	以下の社内イベント情報を登録しました。
	<br>
	<%
} else {
%>
	以下の社内イベント情報を登録できませんでした。
	<br>
	<%
}
%>
	<jsp:useBean id="event" class="model.entity.EventBean" scope="session" />
	
	イベントコード:<jsp:getProperty  name="event"  property="eventCode" /><br>
	イベント名:<jsp:getProperty  name="event"  property="eventName" /><br>
	開催者名:<jsp:getProperty  name="event"  property="organizer" /><br>
	開催日時:<jsp:getProperty  name="event"  property="eventDate" /><br>
	開催場所:<jsp:getProperty  name="event"  property="eventPlace" /><br>
	イベント詳細:<jsp:getProperty  name="event"  property="selfIntroduction" /><br>
	
	<form action="menu.jsp"method="post">
           <input type="submit"value="メニューに戻る">
     </form>
     <%session.invalidate(); %>
     
</body>
</html>