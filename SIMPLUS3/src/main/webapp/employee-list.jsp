<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社員情報一覧</title>
</head>
<body>
	<%
		List<EmployeeBean> employeeList
			= (List<EmployeeBean>) request.getAttribute("employeeList");
	%>
	<table border = 1>
		<tr>
			<th>社員コード</th>
			<th>氏名</th>
			<th>かな</th>
			<th>所属部署</th>
			<th></th>
		</tr>
		<%
			for (EmployeeBean employee : employeeList) {
		%>
		<tr>
			<td><%=employee.getEmployeeCode()%></td>
			<td><%=employee.getSurName() + employee.getFirstName()%></td>
			<td><%=employee.getSurKanaName() + employee.getFirstKanaName()%></td>
			<td><%=employee.getSectionName()%></td>
			<td>
				<form action="employee-detail-servlet" method="POST">
					<input type="hidden" name="code" value="<%=employee.getEmployeeCode()%>">
					<input type="submit" value="詳細">
				</form>
			</td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>