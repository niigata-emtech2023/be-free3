<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報編集画面</title>
</head>
<body>
<%@ include file="header.jsp" %>

	<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session"/>
	
	<form action="employee-update-confirm-servlet" method="post">
	
		従業員コード：<jsp:getProperty name="employee" property="employeeCode" /><br>
		氏：		  <input type="text" name="surName" value="<jsp:getProperty name="employee" property="surName" />"><br>
		名：		  <input type="text" name="firstName" value="<jsp:getProperty name="employee" property="firstName" />"><br>
		氏(かな)：    <input type="text" name="surKanaName" value="<jsp:getProperty name="employee" property="surKanaName" />"><br>
		名(かな)：    <input type="text" name="firstKanaName" value="<jsp:getProperty name="employee" property="firstKanaName" />"><br>
		住所:<input type="text" name="address" value="<jsp:getProperty name="employee" property="address" />">
		メールアドレス:<input type="text" name="mail" value="<jsp:getProperty name="employee" property="mail" />"><br>
		TEL:		  <input type="text" name="tel" value="<jsp:getProperty name="employee" property="tel" />"><br>
		性別:		  <input type="radio" name="gender" value="0" checked="checked">未設定
		
                      <input type="radio" name="gender" value="1">男
		
                      <input type="radio" name="gender" value="2">女
		
		生年月日:	  <input type="date" name="birthDate" value="<jsp:getProperty name="employee" property="birthDate" />"><br>
		所属部署:	  <select name="sectionCode" >
		                   <option value="S000">未確定</option>
						   <option value="S001">経理部</option>
						   <option value="S002">営業部</option>
						   <option value="S003">開発部</option>
						   <option value="S004">研修部</option>
				  	  </select>
		入社日:		  <input type="date" name="joiningDate" value="<jsp:getProperty name="employee" property="joiningDate" />"><br>

		
		<input type="submit" value="確認">
		
	</form>
	
	<form action="employee-detail-servlet" method="POST">
		<input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>">
		<input type="submit" value="戻る">
	</form>
</body>
</html>