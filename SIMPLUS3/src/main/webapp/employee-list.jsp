<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社員情報一覧</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table-style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
  <div class = "container">
    <h1>社員情報一覧</h1>
	<%
		List<EmployeeBean> employeeList
			= (List<EmployeeBean>) request.getAttribute("employeeList");
	%>
	<table>
	  <thead>
		<tr>
			<th>社員コード</th>
			<th>氏名</th>
			<th>かな</th>
			<th>所属部署</th>
			<th></th>
		</tr>
	  </thead>
	  <tbody>
		<%
			for (EmployeeBean employee : employeeList) {
		%>
		<tr>
			<td><span class="str_td"><%=employee.getEmployeeCode()%></strong></td>
			<td><%=employee.getSurName() + employee.getFirstName()%></td>
			<td><%=employee.getSurKanaName() + employee.getFirstKanaName()%></td>
			<td><%=employee.getSectionName()%></td>
			<td>
				<form action="employee-detail-servlet" method="POST">
					<input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>">
					<input type="submit" value="詳細表示" class="detail-submit">
				</form>
			</td>
		</tr>
		<%
			}
		%>
		</tbody>
	</table>
	
	<form action="menu.jsp" method="POST">
        <input type="submit" value="メニューに戻る" class="main_submit">
	</form>
  </div>
</body>
</html>