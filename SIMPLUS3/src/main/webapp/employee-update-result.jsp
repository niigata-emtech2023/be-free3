<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報編集完了画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">

</head>
<body>
<%@ include file="header.jsp" %>
<h1>従業員情報の編集完了</h1>
  <div class="confirm-field">
	<%
		int processingNumber = (Integer) request.getAttribute("processingNumber");
		if (processingNumber > 0) {
	%>
	次のデータを変更登録しました。<br>
	<%
		} else {
	%>
	<span class="fail_red">次のデータを変更登録できませんでした。入力データを確認してください。</span><br>
	<%
		}
	%>
	    <jsp:useBean id="employee" scope="session" class="model.entity.EmployeeBean" />
	    <table>
	  <tr>
        <th>従業員コード</th>
        <td><jsp:getProperty name="employee" property="employeeCode" /></td>
      </tr>
      <tr>
        <th>氏名（かな）</th>
        <td><jsp:getProperty name="employee" property="surName" /><jsp:getProperty name="employee" property="firstName" />
        （<jsp:getProperty name="employee" property="surKanaName" /><jsp:getProperty name="employee" property="firstKanaName" />）</td>
      </tr>
      <tr>
        <th>メールアドレス</th>
        <td><jsp:getProperty name="employee" property="mail" /></td>
      </tr>
      <tr>
        <th>電話番号</th>
        <td><jsp:getProperty name="employee" property="tel" /></td>
      </tr>
      <tr>
        <th>住所</th>
        <td><jsp:getProperty name="employee"  property="address" /></td>
      </tr>
      <tr>
        <th>性別</th>
        <td><jsp:getProperty name="employee" property="gender" /></td>
      </tr>
      <tr>
        <th>生年月日</th>
        <td><jsp:getProperty name="employee" property="birthDate" /></td>
      </tr>
      <tr>
        <th>所属部署</th>
        <td><jsp:getProperty name="employee" property="sectionCode" /></td>
      </tr>
      <tr>
        <th>入社日</th>
        <td><jsp:getProperty name="employee" property="joiningDate" /></td>
      </tr>
	</table>
	    
	    <!-- 従業員コード：<jsp:getProperty name="employee" property="employeeCode" /><br>
		 氏:			  <jsp:getProperty name="employee" property="surName" /><br>
		名：		  <jsp:getProperty name="employee" property="firstName" /><br>
		氏(かな)：	  <jsp:getProperty name="employee" property="surKanaName" /><br>
		名(かな)：	  <jsp:getProperty name="employee" property="firstKanaName" /><br>
		メールアドレス:<jsp:getProperty name="employee" property="mail" /><br>
		電話番号:	  <jsp:getProperty name="employee" property="tel" /><br>
		住所:		  <jsp:getProperty name="employee"  property="address" /><br>
		性別:		  <jsp:getProperty name="employee" property="gender" /><br>
		生年月日:	  <jsp:getProperty name="employee" property="birthDate" /><br>
		所属部署:	  <jsp:getProperty name="employee" property="sectionCode" /><br>
		入社日:		  <jsp:getProperty name="employee" property="joiningDate" /><br>
		-->
	<form action="employee-list-servlet" method="POST">
		<input type="submit" value="一覧に戻る" class="c-form-submit-button3">
	</form>

	<% session.removeAttribute("employee"); %>
</body>
</html>