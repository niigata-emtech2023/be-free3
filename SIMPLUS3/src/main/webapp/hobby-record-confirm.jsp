<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>自己紹介・趣味登録確認画面</title>
</head>
<body>
       <h1>趣味・自己紹介登録確認画面</h1>
        
	    <jsp:useBean id="employee"  class="model.entity.EmployeeBean" scope="session" />
	
	    <jsp:setProperty name="employee" property="employeeCode" param="employeeCode" />
	    <jsp:setProperty name="employee" property="hobbyName" param="hobbyName" />
	    <jsp:setProperty name="employee" property="selfintroduction" param="selfintroduction" />
	     
	     変更したい従業員のコード：<jsp:getProperty  name="employee"  property="employeeCode" /><br>
	     趣味名:<jsp:getProperty  name="employee"  property="hobbyName" /><br>
	     自己紹介:<jsp:getProperty  name="employee"  property="selfintroduction" /><br>
	      
	    
	    <form action="hobby-insert-record-servlet"method="post">
              <input type="submit" value="確定">
     </form>
     <form action="hobby-insert-form.jsp" method="post">
              <input type="submit" value="戻る">
     </form>
       
</body>
</html>