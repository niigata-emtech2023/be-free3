<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員削除確認画面</title>
</head>
<body>
	<h1>従業員削除確認画面</h1>
		<form action="employee-delete-servlet" method="post">
	<%
		EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");
	%>
	<table border=1>
		<tr><th>従業員コード</th><td><%=employee.getEmployeeCode() %></td></tr>
		<tr><th>氏名（かな）</th><td><%=employee.getSurName() %><%=employee.getFirstName() %>(<%=employee.getSurKanaName() %><%=employee.getFirstKanaName() %>)</td></tr>
		<tr><th>メールアドレス</th><td><%=employee.getMail() %></td></tr>
		<tr><th>TEL</th><td><%=employee.getTel() %></td></tr>
		<tr><th>生年月日</th><td><%=employee.getBirthDate() %></td><th>性別</th><td><%=employee.getGender() %></td></tr>
		<tr><th>所属部署</th><td><%=employee.getSectionName() %></td><th>入社日</th><td><%=employee.getJoiningDate() %></td></tr>
		<tr><th>保有資格</th><td><%=employee.getLicenseName() %></td><th>趣味</th><td><%=employee.getHobbyName() %></td></tr>
		<tr><th>自己紹介</th><td><%=employee.getSelfintroduction() %></td></tr>
	</table>
	本当に削除しますか？
	
	<input type="submit" value="削除">
	</form>
	<form action="employee-delete.jsp" method="post">
	<input type="submit" value="戻る">
	</form>

</body>
</html>