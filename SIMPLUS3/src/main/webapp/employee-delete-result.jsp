<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員削除完了画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">

</head>
<body>
<%@ include file="header.jsp" %>
	<h1>従業員の削除完了</h1>
	<div class="confirm-field">
	<%
		EmployeeBean employee =  (EmployeeBean)session.getAttribute("employee");
	%>
	<p>以下の従業員情報を削除しました。</p>
	<table>
		<tr><th>従業員コード</th><td><%=employee.getEmployeeCode() %></td></tr>
		<tr><th>氏名（かな）</th><td><%=employee.getSurName() %><%=employee.getFirstName() %>(<%=employee.getSurKanaName() %><%=employee.getFirstKanaName() %>)</td></tr>
		<tr><th>メールアドレス</th><td><%=employee.getMail() %></td></tr>
		<tr><th>TEL</th><td><%=employee.getTel() %></td></tr>
		<tr><th>生年月日</th><td><%=employee.getBirthDate() %></td></tr>
		<tr><th>性別</th><td><%=employee.getGender() %></td></tr>
		<tr><th>所属部署</th><td><%=employee.getSectionCode() %></td></tr>
		<tr><th>入社日</th><td><%=employee.getJoiningDate() %></td></tr>
		<tr><th>保有資格</th><td><%=employee.getLicenseName() %></td></tr>
		<tr><th>趣味</th><td><%=employee.getHobbyName() %></td></tr>
		<tr><th>自己紹介</th><td><%=employee.getSelfintroduction() %></td></tr>
	</table>
	<form action="menu.jsp" method="post">
	<input type="submit" value="メニューへ戻る" class="c-form-submit-button3">
	</form>

</div>
</body>
</html>