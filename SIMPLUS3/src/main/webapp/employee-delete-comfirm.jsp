<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員削除確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">
</head>
<body>
<%@ include file="header.jsp" %>
	<h1>従業員削除確認画面</h1>
	
	<div class="confirm-field">
	<p>以下の社員情報を削除します。よろしいですか？</p>	
	<%
		EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");
	%>
	<table>
		<tr>
			<th>従業員コード</th>
			<td><%=employee.getEmployeeCode() %></td>
		</tr>
		<tr>
			<th>氏名（かな）</th>
			<td><%=employee.getSurName() %><%=employee.getFirstName() %>(<%=employee.getSurKanaName() %><%=employee.getFirstKanaName() %>)</td>
		</tr>
		<tr>
			<th>所属部署</th>
			<td><%=employee.getSectionName() %></td>
		</tr>
		<tr>
			<th>メールアドレス</th>
			<td><%=employee.getMail() %></td>
		</tr>
		<tr>
			<th>電話番号</th>
			<td><%=employee.getTel() %></td>
		</tr>
		<tr>
			<th>生年月日</th>
			<td><%=employee.getBirthDate() %></td>
		</tr>
		<tr>
			<th>性別</th>
			<td><%=employee.getGenderName() %></td>
		</tr>
		<tr>
			<th>入社日</th>
			<td><%=employee.getJoiningDate() %></td>
		</tr>
		<tr>
			<th>保有資格</th>
			<td><%=employee.getLicenseName() %></td>
		</tr>
		<tr>
			<th>趣味</th>
			<td><%=employee.getHobbyName() %></td>
		</tr>
		<tr>
			<th>自己紹介</th>
			<td><%=employee.getSelfintroduction() %></td>
		</tr>
	</table>
	
<!-- 
	<input type="submit" value="削除">
	</form>
	<form action="employee-delete.jsp" method="post">
	<input type="submit" value="戻る" class="c-form-submit-button4">
	</form> -->

	<div class="double_submit">
  <ul>
    <li>
    <form action="employee-detail.jsp" method="post">
	    <input type="submit" value="詳細画面に戻る" class="c-form-back-button">
	  </form>
      
    </li>
    <li>
      <form action="employee-delete-servlet" method="POST">
	    <input type="submit" value="確定" class="c-form-submit-button">
	  </form>
    </li>
  </ul>
  </div>
  </div>

</body>
</html>