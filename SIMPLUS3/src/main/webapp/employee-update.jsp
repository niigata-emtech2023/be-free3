<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報編集画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert_form.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class = "container">
     <h1>従業員編集画面</h1>
    
	<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session"/>
	
	<form action="employee-update-confirm-servlet" method="post">
	
	<%
		EmployeeBean eb = (EmployeeBean)session.getAttribute("employee");
	%>
	
	
	<table class ="one_table">
	    <tr>
	      <th>従業員コード</th>
	      <td class="normal_td"><input class="form_text" type="text" name="employeeCode" value="<jsp:getProperty name="employee" property="employeeCode" />"></td>
	    </tr>
	</table>
	
	<table class="two_table" align="left">
	    <tr>
	      <th>氏名</th>
	      <td class="normal_td"><input class="form_text" type="text" name="surName" value="<jsp:getProperty name="employee" property="surName" />"> <input class="form_text" type="text" name="firstName" value="<jsp:getProperty name="employee" property="firstName" />">
	      </td>
	    </tr>
	    <tr>
	      <th>性別</th>
	      <td class="normal_td">
	             <fieldset class="radio-002">
                   <label>
                     <input type="radio" name="gender" value="0" 
                    <%--  <%
                     if(eb.getGender().equals("0")){
                     %>
                     checked="checked" --%>
    
                     >未設定
                   </label>
                   <label>
                     <input type="radio" name="gender" value="1" 
                    <%--  <%
                     }else if(eb.getGender().equals("1")){
                     %>
                     checked="checked" --%>
                     >男
                   </label>
                   <label>
                     <input type="radio" name="gender" value="2" 
                     <%-- <%
                     }else if(eb.getGender().equals("2")){
                     %>
                     checked="checked"
                     <%
                     }
                     %> --%>
                     >女
                   </label>
                 </fieldset>
	      </td>
	    </tr>
	    <tr>
	      <th>メールアドレス</th>
	      <td class="normal_td"><input class="form_text" type="text" name="mail" value="<jsp:getProperty name="employee" property="mail" />"></td>
	    </tr>
	    <tr>
	      <th>生年月日</th>
	      <td class="normal_td"><label class="d_label"><input type="date" name="birthDate" value="<jsp:getProperty name="employee" property="birthDate" />"></label></td>
	    </tr>
	</table>
	<table class="two_table">
	    <tr>
	      <th>氏名かな</th>
	      <td class="normal_td"><input class="form_text" type="text" name="surKanaName" value="<jsp:getProperty name="employee" property="surKanaName" />"> <input class="form_text" type="text" name="firstKanaName" value="<jsp:getProperty name="employee" property="firstKanaName" />">
	      </td>
	    </tr>
	    <tr>
	      <th>所属部署</th>
	      <td class="normal_td">
	        <div class="c-form-select">
                  <select name="sectionCode" >
                     <option value="S000">未確定</option>
				     <option value="S001">経理部</option>
				     <option value="S002">営業部</option>
				     <option value="S003">開発部</option>
				     <option value="S004">研修部</option>
				  </select>
			 </div>
	      </td>
	    <tr>
	      <th>電話番号</th>
	      <td class="normal_td"><input class="form_text" type="text" name="tel" value="<jsp:getProperty name="employee" property="tel" />"></td>
	    </tr>
	    <tr>
	      <th>入社日</th>
	      <td class="normal_td"><label class="d_label"><input type="date" name="joiningDate" value="<jsp:getProperty name="employee" property="joiningDate" />"></label></td>
	    </tr>
	</table>
	
	<table class ="one_table">
	    <tr>
	      <th>住所</th>
	      <td class="normal_td"><input class="form_text" type="text" name="address" value="<jsp:getProperty name="employee" property="address" />"></td>
	    </tr>
	</table>
		<!-- 氏：		  <input type="text" name="surName" value="<jsp:getProperty name="employee" property="surName" />"><br>
		名：		  <input type="text" name="firstName" value="<jsp:getProperty name="employee" property="firstName" />"><br>
		 氏(かな)：    <input type="text" name="surKanaName" value="<jsp:getProperty name="employee" property="surKanaName" />"><br>
		名(かな)：    <input type="text" name="firstKanaName" value="<jsp:getProperty name="employee" property="firstKanaName" />"><br>
		住所:<input type="text" name="address" value="<jsp:getProperty name="employee" property="address" />">
		メールアドレス:<input type="text" name="mail" value="<jsp:getProperty name="employee" property="mail" />"><br>
		TEL:		  <input type="text" name="tel" value="<jsp:getProperty name="employee" property="tel" />"><br>
		性別:		  <input type="radio" name="gender" value="0" checked="checked">未設定
		
                      <input type="radio" name="gender" value="1">男
		
                      <input type="radio" name="gender" value="2">女
		
		生年月日:	  <input type="date" name="birthDate" value="<jsp:getProperty name="employee" property="birthDate" />"><br>
		所属部署:	  <select name="sectionCode" >
		                   <option value="S000">未確定</option>
						   <option value="S001">経理部</option>
						   <option value="S002">営業部</option>
						   <option value="S003">開発部</option>
						   <option value="S004">研修部</option>
				  	  </select>
		入社日:		  <input type="date" name="joiningDate" value="<jsp:getProperty name="employee" property="joiningDate" />"><br>
-->
		<jsp:setProperty name="employee" property="employeeCode" param="employeeCode" />
		
		<input type="submit" value="確認" class="c-form-submit-button">
		
	    </form>
	
	<form action="employee-detail-servlet" method="POST">
		<input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>">
		<input type="submit" value="詳細画面に戻る" class="c-form-submit-button2">
	</form>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>