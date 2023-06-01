<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報登録画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert_form.css">
</head>
<body>
<%@ include file="header.jsp" %>
  <div class = "container">
	<form action="event-insert-confirm-servlet"method="post">
	<h1>社内イベント登録</h1>
	  <table class="two_table" align="left">
	    <tr>
	      <th>イベントコード<span class="req_span">必須</span></th>
	      <td class="normal_td"><input type="text" size="10" name="eventCode" required></td>
	    </tr>
	    <tr>
	      <th>開催者<span class="req_span">必須</span><br><p class="note">従業員コードで入力してください</p></th>
	      <td class="normal_td"><input type="text" size="10" name="organizer" required></td>
	    </tr>
	    <tr>
	      <th>開催場所<span class="req_span">必須</span></th>
	      <td class="normal_td"><input type="text" size="10" name="eventPlace" value ="未定" required></td>
	  </table>
	  <table class="two_table">
	    <tr>
	      <th>イベント名<span class="req_span">必須</span></th>
	      <td class="normal_td"><input type="text" size="10" name="eventName" required></td>
	    </tr>
	    <tr>
	      <th>開催日<span class="req_span">必須</span></th>
	      <td class="normal_td"><input type="date" size="10" name="eventDate" required></td>
	    </tr>
	  </table>
	  <table class="one_table">
	    <tr>
	      <th>イベント詳細<span class="req_span">必須</span></th>
	      <td class="normal_td"><textarea name="selfIntroduction" cols="40" rows="3"  required>誰でも気軽に参加してください！</textarea><td>
	    </tr>
	  </table>
		
	  <input type="submit" value="確認" class="c-form-submit-button">
	</form>
	<%
		if ("2" == session.getAttribute("authority")) {
		%>
		<form action="menu2.jsp" method="POST">
		    <input type="submit" value="メニュー画面に戻る" class="main_submit">
	      </form>
		<%
		} else {
		%>
		<form action="menu.jsp" method="POST">
		    <input type="submit" value="メニュー画面に戻る" class="main_submit">
	      </form>
		<%
		}
		%>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>