<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント編集確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css"><link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
     <%@ include file="header.jsp" %>
	<h1>社内イベント情報変更確認画面</h1>
	<div class="confirm-field">
	<p>以下のイベント情報に変更します。よろしいですか？</p>
     
     <%
		request.setCharacterEncoding("UTF-8");
	%>
    イベント情報を以下の内容で変更します。よろしいですか？
    <jsp:useBean id="event" scope="session" class="model.entity.EventBean" />
    
    <jsp:setProperty name= "event" property= "eventName" param= "eventName" />
	<jsp:setProperty name= "event" property= "eventDate" param= "eventDate" />
	<jsp:setProperty name= "event" property= "eventPlace" param= "eventPlace" />
	<jsp:setProperty name= "event" property= "organizer" param= "organizer" />
	<jsp:setProperty name= "event" property= "selfIntroduction" param= "selfIntroduction" />
	
	<table>
	  <tbody>
	    <tr>
	      <th>イベントコード</th>
	      <td><jsp:getProperty  name="event"  property="eventCode" /></td>
	    </tr>
	    <tr>
	      <th>イベントネーム</th>
	      <td><jsp:getProperty  name="event"  property="eventName" /></td>
	    </tr>
	    <tr>
	      <th>開催者</th>
	      <td><jsp:getProperty name="event"  property="organizer" /></td>
	    </tr>
	    <tr>
	      <th>開催日時</th>
	      <td><jsp:getProperty  name="event"  property="eventDate" /></td>
	    </tr>
	    <tr>
	      <th>開催場所</th>
	      <td><jsp:getProperty name="event"  property="eventPlace" /></td>
	    </tr>
	    <tr>
	      <th>自己紹介</th>
	      <td><jsp:getProperty name="event"  property="selfIntroduction" /></td>
	    </tr>
	  </tbody>
	</table>
	
	
    <div class="double_submit">
      <ul>
        <li>
        <form action="event-update-servlet" method="POST">
	      <input type="submit" value="確定" class="c-form-submit-button">
	    </form>
        </li>
        <li>
        <form action="event-update-form-servlet" method="post">
	      <input type="hidden" name="eventCode" value="<%=event.getEventCode()%>" class="c-form-back-button">
	      <input type="submit" value="戻る">
	    </form>
        </li>
      </ul>
     </div>
    </div>
	   
	
</body>
</html>