<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保有資格情報登録画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">

</head>
<body>
<%@ include file="header.jsp" %>
<h1>保有資格情報の登録完了</h1>
<div class="confirm-field">
        <%
       int count = (Integer) request.getAttribute("count");
   	if (count > 0) {
	%>
	以下の保有資格情報を登録しました。
	<br>
	<%
} else {
%>
	<span class="fail_red">以下の保有資格情報を登録できませんでした。入力データを確認してください。</span>
	<br>
	<%
}
%>
	<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session" />
		
		<table>
		  <tr>
	        <th>変更した従業員のコード</th>
	        <td><jsp:getProperty  name="employee"  property="employeeCode" /></td>
	      </tr>
	      <tr>
	        <th>保有資格</th>
	        <td><jsp:getProperty  name="employee"  property="licenseCode" /></td>
	      </tr>
		</table>
		
		<!--変更した従業員のコード：<jsp:getProperty  name="employee"  property="employeeCode" /><br> 
	      保有資格名:<jsp:getProperty  name="employee"  property="licenseCode" /><br> 
	  -->
     <form action="menu.jsp"method="post">
           <input type="submit"value="メニューに戻る" class="c-form-submit-button3">
     </form>
     <%session.removeAttribute("employee"); %>

</div>
</body>
</html>