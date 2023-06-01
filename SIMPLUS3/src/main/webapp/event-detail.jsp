<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント詳細画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
</head>
<body>
<%@ include file="header.jsp" %>
     <div class = "container">
	<h1>社内イベント詳細画面</h1>
	
	<%
		EventBean event = (EventBean) session.getAttribute("event");
	%>
	
	<form action="?" method="post">
		<table class="one_table">
		  <tr><th>イベント名</th><td><%=event.getEventName() %></td></tr>
		</table>
		<table class="two_table" align="left">
		  <tr><th>開催者名</th><td><%=event.getOrganizer() %></td></tr>
		  <tr><th>開催場所</th><td><%=event.getEventPlace() %></td></tr>
		</table>
		<table class="two_table">
		  <tr><th>開催日時</th><td><%=event.getEventDate() %></td></tr>
		  <tr><th>イベント詳細</th><td><%=event.getSelfIntroduction() %></td></tr>
		</table>
		
		<div class="box30">
        <div class="box-title">このイベントに参加しますか？</div>
          <fieldset class="radio-002">
           <label>
              <input type="radio" name="join" value="参加" checked>
              参加
           </label>
           <label>
              <input type="radio" name="join" value="不参加">
              不参加
           </label>
         </fieldset>
         <input type="submit" formaction="event-join-servlet" value="送信する" class="part_submit">
        </div>
		
		<!-- <input type="radio" name="join" value="参加" checked>参加
		<input type="radio" name="join" value="不参加">不参加
		  <input type="submit" formaction="event-join-servlet" value="送信"><br>
		-->
		
		<div class="double_submit">
		<ul>
		  <li>
		    <input type="submit" formaction="event-delete-comfirm-servlet" value="削除" class="c-form-submit-button">
		  </li>
		  <li>
		    <input type="submit" formaction="event-update-form-servlet" value="編集" class="c-form-cancel-button">
		  </li>
		</ul>
		</div>
		<input type="submit" formaction="event-list-servlet" value="一覧に戻る" class="c-form-submit-button2">
	</form>

</div>
</body>
</html>