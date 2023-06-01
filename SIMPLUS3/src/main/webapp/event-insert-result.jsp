<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報登録完了画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <h1></h1>
    <div class="confirm-field">
<%
    int count = (Integer) request.getAttribute("count");
   	if (count > 0) {
	%>
	以下の社内イベント情報を登録しました。
	<br>
	<%
} else {
%>
	<span class="fail_red">以下の社内イベント情報を登録できませんでした。</span>
	<br>
	<%
}
%>
	<jsp:useBean id="event" class="model.entity.EventBean" scope="session" />
	
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
	      <th>イベント詳細</th>
	      <td><jsp:getProperty name="event"  property="selfIntroduction" /></td>
	    </tr>
	    	  </tbody>
	</table>
	
	<form action="menu.jsp"method="post">
           <input type="submit"value="メニューに戻る"class="c-form-submit-button3">
     </form>
     <%session.invalidate(); %>
     </div>
</body>
</html>