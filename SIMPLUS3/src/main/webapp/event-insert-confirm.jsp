<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報登録確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css"><link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
<%@ include file="header.jsp" %>
	<h1>社内イベント情報登録確認画面</h1>
	<div class="confirm-field">
	<p>以下のイベント情報を登録します。よろしいですか？</p>
	<jsp:useBean id="event"  class="model.entity.EventBean" scope="session" />
	
	<jsp:setProperty name="event" property="eventCode" param="eventCode" />
	<jsp:setProperty name="event" property="eventName" param="eventName" />
	<jsp:setProperty name="event" property="organizer" param="organizer" />
	<jsp:setProperty name="event" property="eventDate" param="eventDate" />
	<jsp:setProperty name="event" property="eventPlace" param="eventPlace" />
	<jsp:setProperty name="event" property="selfIntroduction" param="selfIntroduction" />
	
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
        <form action="event-insert-result-servlet" method="POST">
	      <input type="submit" value="確定" class="c-form-submit-button">
	    </form>
        </li>
        <li>
        <form action="event-insert.jsp" method="post">
	      <input type="hidden" name="eventCode" value="<%=event.getEventCode()%>" class="c-form-back-button">
	      <input type="submit" value="戻る">
	    </form>
        </li>
      </ul>
     </div>
    </div>
</body>
</html>