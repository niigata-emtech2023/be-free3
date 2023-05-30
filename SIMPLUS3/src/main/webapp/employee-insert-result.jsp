<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報登録完了画面</title>
</head>
<body>
       <%
       int count = (Integer) request.getAttribute("count");
   	if (count > 0) {
	%>
	以下の従業員情報を登録しました。
	<br>
	<%
} else {
%>
	以下の従業員情報を登録できませんでした。
	<br>
	<%
}
%>
	<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session" />
	
	    コード:<jsp:getProperty  name="employee"  property="employeeCode" /><br> 
	    氏:<jsp:getProperty  name="employee"  property="surName" /><br> 
		名:<jsp:getProperty  name="employee"  property="firstName" /><br>
		氏(かな):<jsp:getProperty name="employee"  property="surKanaName" /><br>
		名(かな):<jsp:getProperty name="employee"  property="firstKanaName" /><br>
		メールアドレス:<jsp:getProperty  name="employee"  property="mail" /><br>
		電話番号:<jsp:getProperty name="employee"  property="tel" /><br>
		住所:<jsp:getProperty name="employee"  property="address" /><br>
		性別:<jsp:getProperty name="employee"  property="gender" /><br>
		生年月日:<jsp:getProperty name="employee"  property="birthDate" /><br>
		所属部署:<jsp:getProperty name="employee"  property="sectionCode" /><br>
		入社日:<jsp:getProperty name="employee"  property="joiningDate" /><br>
		
     
     
     <form action="menu.jsp"method="post">
           <input type="submit"value="メニューに戻る">
     </form>
     <%session.invalidate(); %>

</body>
</html>