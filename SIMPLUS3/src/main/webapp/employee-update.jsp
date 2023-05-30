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
	<form action="employee-update-confirm-servlet" method="post">
	
		従業員コード：<jsp:getProperty name="employee" property="employeeCode" /><br>
		氏：		  <input type="text" name="surName" value="<jsp:getProperty name="employee" property="surName" />"><br>
		名：		  <input type="text" name="firstName" value="<jsp:getProperty name="employee" property="firstName" />"><br>
		氏(かな)：    <input type="text" name="surKanaName" value="<jsp:getProperty name="employee" property="surKanaName" />"><br>
		名(かな)：    <input type="text" name="firstKanaName" value="<jsp:getProperty name="employee" property="firstKanaName" />"><br>
		メールアドレス:<input type="text" name="mail" value="<jsp:getProperty name="employee" property="mail" />"><br>
		TEL:		  <input type="text" name="tel" value="<jsp:getProperty name="employee" property="tel" />"><br>
		性別:		  <input type="radio" name="gender" value="<jsp:getProperty name="employee" property="gender" />">男
                                    <input type="radio" name="gender" value="<jsp:getProperty name="employee" property="gender" />">女
		
		生年月日:	  <input type="text" name="birthDate" value="<jsp:getProperty name="employee" property="birthDate" />"><br>
		所属部署:	  <input type="text" name="sectionCode" value="<jsp:getProperty name="employee" property="sectionCode" />"><br>
		入社日:		  <input type="text" name="joiningDate" value="<jsp:getProperty name="employee" property="joiningDate" />"><br>
		保有資格：    <input type="text" name="license_code" value="<jsp:getProperty name="employee" property="license_code" />"><br>
		趣味：        <input type="text" name="hobbyCode" value="<jsp:getProperty name="employee" property="hobbyCode" />"><br>
		自己紹介：    <input type="text" name="selfintroduction" value="<jsp:getProperty name="employee" property="selfintroduction" />"><br>
		<input type="submit" value="確認">
		
	</form>
	
	<form action="employee-detail-servlet" method="POST">
		<input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>">
		<input type="submit" value="戻る">
	</form>
</body>
</html>