<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保有資格情報登録確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css"><link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body> 
        <%@ include file="header.jsp" %>
        <h1>保有資格情報登録確認画面</h1>
        <div class="confirm-field">
	<p>以下の保有資格を登録します。よろしいですか？</p>
        
	    <jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session" />
	    
		<jsp:setProperty name="employee" property="employeeCode" param="employeeCode" />
	    <jsp:setProperty name="employee" property="licenseCode" param="licenseCode" />
	   	
	   	 <table>
	  <tbody>
	    <tr>
	      <th>変更したい従業員のコード</th>
	      <td><jsp:getProperty  name="employee"  property="employeeCode" /></td>
	    </tr>
	    <tr>
	      <th>保有資格</th>
	      <td><jsp:getProperty  name="employee"  property="licenseCode" /></td>
	    </tr>
	   
	  </tbody>
	</table>
	   	 
      <div class="double_submit">
      <ul>
        <li>
        <form action="license-insert-servlet" method="POST">
	      <input type="submit" value="確定" class="c-form-submit-button">
	    </form>
        </li>
        <li>
        <form action="license-insert-form.jsp" method="post">
	      <input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>" class="c-form-back-button">
	      <input type="submit" value="戻る">
	    </form>
        </li>
      </ul>
     </div>
    </div>

</body>
</html>