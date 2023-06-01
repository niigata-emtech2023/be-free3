<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員別詳細画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert-form.css"> -->
</head>
<body>
<%@ include file="header.jsp" %>
     <div class = "container">
		<%
		EmployeeBean employee = (EmployeeBean) session.getAttribute("employee");
		%>
	    <h1><%=employee.getSurName()%><%=employee.getFirstName()%>さんの詳細情報</h1>
		<div class="detail_table_inner">
		<!--  <table class="one_table">
		   <tr><th>従業員コード</th><td><%=employee.getEmployeeCode()%><td></tr>
		   <tr><th>氏名（かな）</th><td><%=employee.getSurName()%><%=employee.getFirstName()%>(<%=employee.getSurKanaName()%><%=employee.getFirstKanaName()%>)<td></tr>
		</table> -->
		<table class="two_table" align="left">
		   <tr><th>従業員コード</th><td><%=employee.getEmployeeCode()%></td></tr>
		   <tr><th>性別</th><td><%=employee.getGenderName()%></td></tr>
		   <tr><th>メールアドレス</th><td><%=employee.getMail()%></td></tr>
		   <tr><th>生年月日</th><td><%=employee.getBirthDate()%></td></tr>
		   <tr><th>保有資格</th><td><%=employee.getLicenseName()%></td></tr>
		</table>
		<table class="two_table">
		   <tr><th>氏名（氏名かな）</th><td><%=employee.getSurName()%><%=employee.getFirstName()%><br>(<%=employee.getSurKanaName()%><%=employee.getFirstKanaName()%>)</td></tr>
		   <tr><th>所属部署</th><td><%=employee.getSectionName()%></td></tr>
		   <tr><th>電話番号</th><td><%=employee.getTel()%></td></tr>
		   <tr><th>入社日</th><td><%=employee.getJoiningDate()%></td></tr>
		   <tr><th>趣味</th><td><%=employee.getHobbyName()%></td></tr>
		</table>
		<!-- 従業員コード：<%=employee.getEmployeeCode()%><br>
		 氏名（かな）：<%=employee.getSurName()%><%=employee.getFirstName()%>(<%=employee.getSurKanaName()%><%=employee.getFirstKanaName()%>)<br>
		メールアドレス：<%=employee.getMail()%><br>
		TEL：<%=employee.getTel()%><br>
		生年月日：<%=employee.getBirthDate()%><br>
		性別：<%=employee.getGenderName()%><br>
		所属部署：<%=employee.getSectionName()%><br>
		入社日：<%=employee.getJoiningDate()%><br>
		保有資格：<%=employee.getLicenseName()%><br>
		趣味：<%=employee.getHobbyName()%><br>
		-->
		<table class="one_table">
		   <tr><th>住所</th><td><%=employee.getAddress()%></td></tr>
		   <tr><th>自己紹介</th><td><%=employee.getSelfintroduction()%></td></tr>
		</table>
		
	</div>
	<div class="double_submit">
	<ul>
	  <li>
	      <form action="employee-update-form-servlet" method="POST">
		    <input type="submit" value="変更" class="c-form-submit-button">
	      </form>
	  </li>
	  <li>
	      <form action="employee-delete-comfirm-servlet" method="POST">
		    <input type="submit" value="削除" class="c-form-cancel-button">
	      </form>
	  </li>
	</ul>
	</div>
	
	<form action="employee-list-servlet" method="POST">
		<input type="submit" value="従業員一覧画面に戻る" class="c-form-submit-button2">
	</form>
	</div>
</body>
</html>