<%@ page pageEncoding="UTF-8"%>
<%
	String userId = (String)session.getAttribute("userId");
%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">

    <div class="yokonarabi">
      <div class="header_logo">
        <img src="img/logo.png" alt="サイトのロゴマークです。">
      </div>
      <form action="logout-servlet" method="POST">
	    <input class="logout_submit"  type="submit" value="ログアウト">
      </form>
    </div>

ログインユーザ：<%=userId %>
