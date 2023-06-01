<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>自己紹介・趣味登録確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css"><link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
        <%@ include file="header.jsp" %>
       <h1>趣味・自己紹介登録確認画面</h1>
        <div class="confirm-field">
	<p>以下のイベント情報に変更します。よろしいですか？</p>
	
	    <jsp:useBean id="employee"  class="model.entity.EmployeeBean" scope="session" />
	
	    <jsp:setProperty name="employee" property="employeeCode" param="employeeCode" />
	    <jsp:setProperty name="employee" property="hobbyName" param="hobbyName" />
	    <jsp:setProperty name="employee" property="selfintroduction" param="selfintroduction" />
	     
	     <table>
	  <tbody>
	    <tr>
	      <th>変更したい従業員のコード</th>
	      <td><jsp:getProperty  name="employee"  property="employeeCode" /></td>
	    </tr>
	    <tr>
	      <th>趣味名</th>
	      <td><jsp:getProperty  name="employee"  property="hobbyName" /></td>
	    </tr>
	    <tr>
	      <th>自己紹介</th>
	      <td><jsp:getProperty name="employee"  property="selfintroduction" /></td>
	    </tr>
	  </tbody>
	</table>
	     
     <div class="double_submit">
      <ul>
        <li>
        <form action="hobby-insert-record-servlet" method="POST">
	      <input type="submit" value="確定" class="c-form-submit-button">
	    </form>
        </li>
        <li>
        <form action="hobby-insert-form.jsp" method="post">
	      <input type="hidden" name="eventCode" value="<%=employee.getEmployeeCode()%>" class="c-form-back-button">
	      <input type="submit" value="戻る">
	    </form>
        </li>
      </ul>
     </div>
    </div>
       
</body>
</html>