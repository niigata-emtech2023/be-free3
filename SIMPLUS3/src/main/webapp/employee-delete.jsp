<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員削除画面</title>
</head>
<body>
	<h1>従業員削除画面</h1>
	<p>以下の社員情報を削除します。よろしいですか？</p>
		<%
		EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");
		%>
		従業員コード：<%=employee.getEmployeeCode()%><br>
		氏名（かな）：<%=employee.getSurName()%><%=employee.getFirstName()%>(<%=employee.getSurKanaName()%><%=employee.getFirstKanaName()%>)<br>
		メールアドレス：<%=employee.getMail()%><br>
		TEL：<%=employee.getTel()%><br>
		生年月日：<%=employee.getBirthDate()%><br>
		性別：<%=employee.getGender()%><br>
		所属部署：<%=employee.getSectionName()%><br>
		入社日：<%=employee.getJoiningDate()%><br>
		保有資格：<%=employee.getLicense_code()%><br>
		趣味：<%=employee.getHobbyCode()%><br>
		自己紹介：<%=employee.getSelfintroduction()%><br>

	<form action="employee-delete-form-servlet" method="POST">
	    <input type="submit" value="削除">
	</form>
	
	<form action="employee-detail.jsp" method="post">
	    <input type="submit" value="戻る">
	</form>

</body>
</html>