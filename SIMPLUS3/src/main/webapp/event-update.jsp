<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>イベント情報編集画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert_form.css">

</head>
<body>
<%@ include file="header.jsp" %>
<div class = "container">
     <h1>社内イベントの詳細情報を編集</h1>

       <jsp:useBean id="event" class="model.entity.EventBean" scope="session"/>
	
	   <form action="event-update-confirm-servlet" method="post">
	
	   <table class="two_table" align="left">
	      <tr>
	        <th>イベントコード</th>
	        <td class="normal_td"><jsp:getProperty name="event" property="eventCode" /></td>
	      </tr>
	      <tr>
	        <th>開催日時</th>
	        <td class="normal_td"><input type="date" name="eventDate" value="<jsp:getProperty name="event" property="eventDate" />"></td>
	      </tr>
	      <tr>
	        <th>開催者名</th>
	        <td class="normal_td"><input type="text" name="organizer" value="<jsp:getProperty name="event" property="organizer" />"></td>
	      </tr>
	   </table>
	   
	   <table class="two_table">
	       <tr>
	         <th>イベント名</th>
	         <td class="normal_td"><input type="text" name="eventName" value="<jsp:getProperty name="event" property="eventName" />"></td>
	       </tr>
	       <tr>
	         <th>開催場所</th>
	         <td class="normal_td"><input type="text" name="eventplace" value="<jsp:getProperty name="event" property="eventPlace" />"></td>
	       </tr>
	   </table>
	   
	   <table class="one_table">
	       <tr>
	         <th>自由記述</th>
	         <td class="normal_td"><input type="text" name="selfIntroduction" value="<jsp:getProperty name="event" property="selfIntroduction" />"></td>
	       </tr>
	   </table>
	
		<!--  イベントコード：<jsp:getProperty name="event" property="eventCode" /><br>
		イベント名：		  <input type="text" name="eventName" value="<jsp:getProperty name="event" property="eventName" />"><br>
		開催日時：		  <input type="date" name="eventDate" value="<jsp:getProperty name="event" property="eventDate" />"><br>
		開催場所：    <input type="text" name="eventplace" value="<jsp:getProperty name="event" property="eventPlace" />"><br>
		開催者名：    <input type="text" name="organizer" value="<jsp:getProperty name="event" property="organizer" />"><br>
		自由記述:<input type="text" name="selfIntroduction" value="<jsp:getProperty name="event" property="selfIntroduction" />"><br>
	-->
	
		 <input type="submit" value="確認" class="c-form-submit-button">
     </form>
     
     <form action="event-detail-servlet" method="POST">
		<input type="hidden" name="eventCode" value="<%=event.getEventCode()%>">
		<input type="submit" value="戻る">
	</form>
	</div>
	<%@ include file="footer.jsp" %>

</body>
</html>