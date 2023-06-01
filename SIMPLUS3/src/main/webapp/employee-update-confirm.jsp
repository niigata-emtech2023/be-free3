<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.List,model.entity.EmployeeBean" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報編集確認画面</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css"><link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<%@ include file="header.jsp" %>
	<h1>従業員情報変更確認画面</h1>
	<div class="confirm-field">
	<p>以下の従業員情報に変更します。よろしいですか？</p>
<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:useBean id="employee" scope="session" class="model.entity.EmployeeBean" />
	
	<jsp:setProperty name="employee" property="employeeCode" param="employeeCode" />
	<jsp:setProperty name="employee" property="surName" param="surName" />
	<jsp:setProperty name="employee" property="firstName" param="firstName" />
	<jsp:setProperty name="employee" property="surKanaName" param="surKanaName" />
	<jsp:setProperty name="employee" property="firstKanaName" param="firstKanaName" />
	<jsp:setProperty name="employee" property="mail" param="mail" />
	<jsp:setProperty name="employee" property="tel" param="tel" />
	<jsp:setProperty name="employee" property="address" param="address" />
	<jsp:setProperty name="employee" property="gender" param="gender" />
	<jsp:setProperty name="employee" property="birthDate" param="birthDate" />
	<jsp:setProperty name="employee" property="sectionCode" param="sectionCode" />
	<jsp:setProperty name="employee" property="joiningDate" param="joiningDate" />
	
	
	<table>
	  <tbody>
	    <tr>
	      <th>従業員コード</th>
	      <td><jsp:getProperty  name="employee"  property="employeeCode" /></td>
	    </tr>
	    <tr>
	      <th>氏名（かな）</th>
	      <td><jsp:getProperty  name="employee"  property="surName" /><jsp:getProperty  name="employee"  property="firstName" />（<jsp:getProperty name="employee"  property="surKanaName" /><jsp:getProperty name="employee"  property="firstKanaName" />）</td>
	    </tr>
	    <tr>
	      <th>所属部署</th>
	      <td><jsp:getProperty name="employee"  property="sectionCode" /></td>
	    </tr>
	    <tr>
	      <th>メールアドレス</th>
	      <td><jsp:getProperty  name="employee"  property="mail" /></td>
	    </tr>
	    <tr>
	      <th>電話番号</th>
	      <td><jsp:getProperty name="employee"  property="tel" /></td>
	    </tr>
	    <tr>
	      <th>住所</th>
	      <td><jsp:getProperty name="employee"  property="address" /></td>
	    </tr>
	    <tr>
	      <th>性別</th>
	      <td><jsp:getProperty name="employee"  property="gender" /></td>
	    </tr>
	    <tr>
	      <th>生年月日</th>
	      <td><jsp:getProperty name="employee"  property="birthDate" /></td>
	    </tr>
	    <tr>
	      <th>入社日</th>
	      <td><jsp:getProperty name="employee"  property="joiningDate" /></td>
	    </tr>
	  </tbody>
	</table>
	   
	
	
	<div class="double_submit">
      <ul>
        <li>
        <form action="employee-update-servlet" method="POST">
	      <input type="submit" value="確定" class="c-form-submit-button">
	    </form>
        </li>
        <li>
        <form action="employee-update-form-servlet" method="post">
	      <input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>" class="c-form-back-button">
	      <input type="submit" value="戻る">
	    </form>
        </li>
      </ul>
     </div>
     
     </div>
</body>
</html>