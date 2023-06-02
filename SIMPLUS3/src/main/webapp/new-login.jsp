<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<%@ include file="header_log.jsp" %>

	<form class="login_form" action="login-servlet" method="post">
		<div class="login_form_top">
			<h1 class="login_h1">従業員管理システム「simplus」ログイン</h1>
			<p class="login_p">ログインするユーザーの情報を入力してください。</p>
			<%if(request.getAttribute("loginErrorMessage") != null){ %>
			  <p><font color="red"><%= request.getAttribute("loginErrorMessage") %></font></p>
		    <%} %>
		</div>
		<div class="login_form_btm">
			ユーザーID<input class="login_input" type="text" size="20" name="userId"
				placeholder="ユーザーIDを入力してください" required><br> パスワード<input
				class="login_input" type="password" size="20" name="password"
				placeholder="パスワードを入力してください" required><br> <input
				class="login_input" type="submit" value="ログイン">
			
		</div>
	</form>


</body>
</html>