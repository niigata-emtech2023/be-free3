<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員削除画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">
</head>
<body>
	<h1>従業員削除画面</h1>
    <div class="confirm-field">
	<p>以下の社員情報を削除します。よろしいですか？</p>
		<%
		EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");
		%>
		
		<table>
<tbody>
<tr>
  <th>従業員コード</th>
  <td><%=employee.getEmployeeCode()%></td>
</tr>
<tr>
  <th>氏名（かな）</th>
  <td><%=employee.getSurName()%><%=employee.getFirstName()%>(<%=employee.getSurKanaName()%><%=employee.getFirstKanaName()%>)</td>
</tr>
<tr>
  <th>メールアドレス</th>
  <td><%=employee.getMail()%></td>
</tr>
<tr>
  <th>電話番号</th>
  <td><%=employee.getTel()%></td>
</tr>
<tr>
  <th>生年月日</th>
  <td><%=employee.getBirthDate()%></td>
</tr>
<tr>
  <th>性別</th>
  <td><%=employee.getGender()%></td>
</tr>
<tr>
  <th>所属部署</th>
  <td><%=employee.getSectionName()%></td>
</tr>
<tr>
  <th>入社日</th>
  <td><%=employee.getJoiningDate()%></td>
</tr>
<th>保有資格</th>
<td><%=employee.getLicenseName()%></td>
</tr>
<th>趣味</th>
<td><%=employee.getHobbyName()%></td>
</tr>
<th>自己紹介</th>
<td><%=employee.getSelfintroduction()%></td>
</tr>
</tbody>
</table>
		<!-- 従業員コード：<%=employee.getEmployeeCode()%><br>
		氏名（かな）：<%=employee.getSurName()%><%=employee.getFirstName()%>(<%=employee.getSurKanaName()%><%=employee.getFirstKanaName()%>)<br>
		メールアドレス：<%=employee.getMail()%><br>
		TEL：<%=employee.getTel()%><br>
		生年月日：<%=employee.getBirthDate()%><br>
		性別：<%=employee.getGender()%><br>
		所属部署：<%=employee.getSectionName()%><br>
		入社日：<%=employee.getJoiningDate()%><br>
		保有資格：<%=employee.getLicenseName()%><br>
		趣味：<%=employee.getHobbyName()%><br>
		自己紹介：<%=employee.getSelfintroduction()%><br>
   -->
  <div class="double_submit">
  <ul>
    <li>
      <form action="employee-delete-comfirm-servlet" method="POST">
	    <input type="submit" value="削除" class="c-form-submit-button">
	  </form>
    </li>
    <li>
      <form action="employee-detail.jsp" method="post">
	    <input type="submit" value="戻る" class="c-form-back-button">
	  </form>
    </li>
  </ul>
  </div>
  
  </div>
</body>
</html>