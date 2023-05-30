<%@ page pageEncoding="UTF-8"%>
<%
	String userId = (String)session.getAttribute("userId");
%>

ログインユーザ：<%=userId %>