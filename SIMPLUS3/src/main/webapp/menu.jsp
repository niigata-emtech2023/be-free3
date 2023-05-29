<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー画面</title>
</head>
<body>
	<form action="employee-list-servlet" method="POST">
		<input type="submit" value="従業員情報一覧">
	</form>
	<form action="employee-insert-form-servlet" method="POST">
		<input type="submit" value="従業員登録">
	</form>
	<form action="license-insert-servlet" method="POST">
		<input type="submit" value="保有資格情報登録">
	</form>
	<form action="hobby-insert-servlet" method="POST">
		<input type="submit" value="趣味・自己紹介登録">
	</form>
	<form action="event-list-servlet" method="POST">
		<input type="submit" value="社内イベント情報一覧">
	</form>
	<form action="event-insert-servlet" method="POST">
		<input type="submit" value="社内イベント情報登録">
	</form>

</body>
</html>