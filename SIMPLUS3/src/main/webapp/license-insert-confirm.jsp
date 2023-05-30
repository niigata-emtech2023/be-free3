<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保有資格登録確認画面</title>
</head>
<body> 
        <h1>保有資格登録確認画面</h1>
        
	    <jsp:useBean id="employee"  class="model.entity.EmployeeBean" scope="session" />
	
	    <jsp:setProperty name="employee" property="licenseName" param="licenseName" />
	  　 
	     保有資格名:<jsp:getProperty  name="employee"  property="licenseName" /><br> 
	    
	    <form action="license-insert-servlet"method="post">
              <input type="submit" value="確定">
     </form>
     <form action="license-insert-form.jsp" method="post">
              <input type="submit" value="戻る">
     </form>

</body>
</html>