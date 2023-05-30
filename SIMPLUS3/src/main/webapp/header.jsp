<%@ page pageEncoding="UTF-8"%>
<%
	String userId = (String)session.getAttribute("userId");
%>
<div class="header_logo">
  <img src="img/logo.png" alt="サイトのロゴマークです。">
</div>

ログインユーザ：<%=userId %>
