<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報登録完了画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm.css">
</head>
<body>
<%@ include file="header.jsp" %>
  <h1>従業員情報の登録完了</h1>
  <div class="confirm-field">
  
       <%
       int count = (Integer) request.getAttribute("count");
   	if (count > 0) {
	%>
	以下の従業員情報を登録しました。
	<br>
	<%
} else {
%>
	<span class="fail_red">以下の従業員情報を登録できませんでした。入力データを確認してください。</span>
	<br>
	<%
}
%>
	<jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session" />
	
	<table>
	  <tr>
        <th>従業員コード</th>
        <td><jsp:getProperty  name="employee"  property="employeeCode" /></td>
      </tr>
      <tr>
        <th>氏名（かな）</th>
        <td><jsp:getProperty  name="employee"  property="surName" /><jsp:getProperty  name="employee"  property="firstName" />
        （<jsp:getProperty name="employee"  property="surKanaName" /><jsp:getProperty name="employee"  property="firstKanaName" />）</td>
      </tr>
      <tr>
        <th>所属部署</th>
        <td><jsp:getProperty name="employee"  property="sectionName" /></td>
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
        <td><jsp:getProperty name="employee"  property="genderName" /></td>
      </tr>
      <tr>
        <th>生年月日</th>
        <td><jsp:getProperty name="employee"  property="birthDate" /></td>
      </tr>
      <tr>
        <th>入社日</th>
        <td><jsp:getProperty name="employee"  property="joiningDate" /></td>
      </tr>
	</table>
     
     <form action="menu.jsp"method="post">
           <input type="submit"value="メニュー画面に戻る" class="c-form-submit-button3">
     </form>
     <% session.removeAttribute("employee"); %>

</div>
</body>
</html>