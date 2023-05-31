<%@ page pageEncoding="UTF-8"%>
<%
	String userId = (String)session.getAttribute("userId");
%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
      <div class="header_logo">
        <img src="img/logo.png" alt="サイトのロゴマークです。">
      </div>
      <div class=flead>
          <form action="logout-servlet" method="POST">
	        <input class="logout_submit"  type="submit" value="ログアウト">
          </form>
          <div class="user_name_area"><p>ログインユーザ：<%=userId %></p></div>
          <form action="design_form.jsp" method="POST">
	        <input class="design_submit" type="submit" value="サイトデザインの変更">
          </form>
      </div>


