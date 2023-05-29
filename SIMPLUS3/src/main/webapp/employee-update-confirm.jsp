<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報編集画面</title>
</head>
<body>
<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session"/>
	<form action="employee-alter-confirm-servlet" method="post">
	
		従業員コード：<jsp:getProperty name="employee" property="code" /><br>
		
		氏：<input type="text" name="name" value="<jsp:getProperty name="employee" property="name" />"><br>
		名：<input type="text" name="age" value="<jsp:getProperty name="employee" property="age" />"><br>
		氏(かな)：<input type="text" name="section"	value="<jsp:getProperty name="employee" property="section" />"><br>
		
		
			
		<input type="submit" value="変更する">
		
	</form>
</body>
</html>