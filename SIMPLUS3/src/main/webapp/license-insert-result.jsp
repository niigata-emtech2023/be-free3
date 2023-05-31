<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <%
       int count = (Integer) request.getAttribute("count");
   	if (count > 0) {
	%>
	以下の保有資格情報を登録しました。
	<br>
	<%
} else {
%>
	以下の保有資格情報を登録できませんでした。
	<br>
	<%
}
%>
	<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session" />
	
	    保有資格名:<jsp:getProperty  name="employee"  property="licenseCode" /><br> 
	  
     <form action="menu.jsp"method="post">
           <input type="submit"value="メニューに戻る">
     </form>
     <%session.invalidate(); %>

</body>
</html>