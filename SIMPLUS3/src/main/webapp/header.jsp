<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean" %>
<%
	String userId = (String)session.getAttribute("userId");
%>
<%
	String auto = (String)session.getAttribute("authority");
    String a = "1";
%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font_size.css">
      <div class="header_logo">
        <a href="menu.jsp"><img src="img/logo.png" alt="サイトのロゴマークです。"></a>
      </div>
      <div class=flead>
          <form action="logout-servlet" method="POST">
	        <input class="logout_submit"  type="submit" value="ログアウト">
          </form>
          <div class="user_name_area"><p class ="log_info">ログインユーザー：<%=userId %>
		  <%
		if ("2" == session.getAttribute("authority")) {
		%>
		<span>【一般従業員ユーザーです】</span>
		<%
		} else {
		%>
		<span>【管理者ユーザーです】</span>
		<%
		}
		%></p></div>
          <!-- <form action="design_form.jsp" method="POST">
	        <input class="design_submit" type="submit" value="サイトデザインの変更">
          </form> -->
      </div>

