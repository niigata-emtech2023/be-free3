<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント編集完了画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="confirm-field">
       <%
		int processingNumber = (Integer) request.getAttribute("processingNumber");
		if (processingNumber > 0) {
	%>
	次のデータを変更登録しました。<br>
	<%
		} else {
	%>
	<span class="fail_red">次のデータを変更登録できませんでした。</span><br>
	<%
		}
	%>
	<jsp:useBean id="event" scope="session" class="model.entity.EventBean" />
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
		
		<form action="event-list-servlet" method="POST">
		<input type="submit" value="メニュー画面に戻る" class="c-form-submit-button3">
	</form>

	<!-- <% session.invalidate(); %> -->
	</div>
</body>
</html>