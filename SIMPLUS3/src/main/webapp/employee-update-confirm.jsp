<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.List,model.entity.EmployeeBean" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報編集確認画面</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
	%>
	従業員情報を以下の内容に変更します。よろしいですか？<br>
	<jsp:useBean id="employee" scope="session" class="model.entity.EmployeeBean" />
	
	<jsp:setProperty name="employee" property="surName" param="surName" />
	<jsp:setProperty name="employee" property="firstName" param="firstName" />
	<jsp:setProperty name="employee" property="surKanaName" param="surKanaName" />
	<jsp:setProperty name="employee" property="firstKanaName" param="firstKanaName" />
	<jsp:setProperty name="employee" property="mail" param="mail" />
	<jsp:setProperty name="employee" property="tel" param="tel" />
	<jsp:setProperty name="employee" property="address" param="address" />
	<jsp:setProperty name="employee" property="gender" param="gender" />
	<jsp:setProperty name="employee" property="birthDate" param="birthDate" />
	<jsp:setProperty name="employee" property="sectionCode" param="sectionCode" />
	<jsp:setProperty name="employee" property="joiningDate" param="joiningDate" />
	
	    従業員コード： <jsp:getProperty name="employee" property="employeeCode" /><br>
		氏：		   <jsp:getProperty name="employee" property="surName" /><br>
		名：		   <jsp:getProperty name="employee" property="firstName" /><br>
		氏(かな)：	   <jsp:getProperty name="employee" property="surKanaName" /><br>
		名(かな)：	   <jsp:getProperty name="employee" property="firstKanaName" /><br>
		メールアドレス:<jsp:getProperty name="employee" property="mail" /><br>
		電話番号:	   <jsp:getProperty name="employee" property="tel" /><br>
		住所:		   <jsp:getProperty name="employee" property="address" /><br>
		性別:		   <jsp:getProperty name="employee" property="gender" /><br>
		生年月日:	   <jsp:getProperty name="employee" property="birthDate" /><br>
		所属部署:	   <jsp:getProperty name="employee" property="sectionCode" /><br>
		入社日:	       <jsp:getProperty name="employee" property="joiningDate" /><br>
		
	<form action="employee-update-servlet" method="post">
		<input type="submit" value="変更する">
	</form>
	
	<form action="employee-update-form-servlet" method="POST">
		<input type="submit" value="戻る">
	</form>
</body>
</html>