<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員登録確認画面</title>
</head>
<body>
	<h1>従業員登録確認画面</h1>
	<jsp:useBean id="employee"  class="model.entity.EmployeeBean" scope="request" />
	<form action="employee-insert-servlet"method="post">
	コード:<jsp:getProperty  name="employee"  property="employeeCode" /><br> 
	    氏:<jsp:getProperty  name="employee"  property="surName" /><br> 
		名:<jsp:getProperty  name="employee"  property="firstName" /><br>
		氏(かな):<jsp:getProperty name="employee"  property="surKanaName" /><br>
		名(かな):<jsp:getProperty name="employee"  property="surKanaName" /><br>
		メールアドレス:<jsp:getProperty  name="employee"  property="mail" /><br>
		電話番号:<jsp:getProperty name="employee"  property="tel" /><br>
		住所:<jsp:getProperty name="employee"  property="address" /><br>
		性別:<jsp:getProperty name="employee"  property="gender" /><br>
		生年月日:<jsp:getProperty name="employee"  property="birthDate" /><br>
		所属部署:<jsp:getProperty name="employee"  property="sectionName" /><br>
		入社日:<jsp:getProperty name="employee"  property="joiningDate" /><br>
	    
     
              <input type="submit" value="確定する">
     </form>
              <form action="employee-insert.jsp" method="post">
              <input type="submit" value="戻る">
              </form>
</body>
</html>