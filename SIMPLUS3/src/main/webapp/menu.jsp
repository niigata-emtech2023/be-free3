<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メニュー画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font_size.css">
</head>
<body>
<%@ include file="header.jsp" %>
  <div class = "container">
  <h1>メニュー</h1>
   
  <div class="order_area">
      <h3>【行いたい操作を選んでください。】</h3>
  </div>  
  <div class="menu_select">
      <p>▶所属する従業員の一覧表示・新規登録ができます</p>
      <ul>
	      <li>
	        <form action="employee-list-servlet" method="POST">
		      <input type="submit" value="従業員情報一覧" class="main_submit">
	        </form>
	      </li>
	      <li>
	        <form action="employee-insert-form-servlet" method="POST">
		      <input type="submit" value="従業員登録" class="main_submit">
   	        </form>
	      </li>
	  </ul>
	  
	  <!-- <p>▶従業員の情報を新たに登録できます</p>
	    <form action="employee-insert-form-servlet" method="POST">
		    <input type="submit" value="従業員登録">
   	    </form><br>  -->
   	  
   	  <!--  <p>▶所属する従業員の保有資格を登録できます</p>
   	  <div class ="none-list">
	    <form action="license-insert-form-servlet" method="POST">
		    <input type="submit" value="保有資格情報登録" class="main_submit">
	    </form><br>
	  </div> -->
	
	<p>▶従業員の保有資格、趣味・自己紹介を登録できます</p>
	  <ul>
	      <li>
	        <form action="license-insert-form-servlet" method="POST">
		      <input type="submit" value="保有資格情報登録" class="main_submit">
	        </form>
	      </li>
	      <li>
	        <form action="hobby-insert-form-servlet" method="POST">
		      <input type="submit" value="趣味・自己紹介登録" class="main_submit">
	        </form>
	      </li>
	  </ul>
	    
	  <p>▶今後開催予定の社内イベントを一覧表示・登録します</p>
	  <!-- <div class = "yokonarabi"> -->
	  <ul>
	      <li>
	        <form action="event-list-servlet" method="POST">
		      <input type="submit" value="社内イベント情報一覧" class="main_submit">
	        </form>
	      </li>
	      <li>
	        <form action="event-insert-servlet" method="POST">
		      <input type="submit" value="社内イベント情報登録" class="main_submit">
  	        </form>
	      </li>
	  </ul>
	    <!-- <form action="event-list-servlet" method="POST">
		    <input type="submit" value="社内イベント情報一覧">
	    </form>
	    
	  <br><p>▶社内イベントを新たに登録できます</p>  -->
	    <!-- <form action="event-insert-servlet" method="POST">
		    <input type="submit" value="社内イベント情報登録">
  	    </form>
  	    </div><br> -->
      </div>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html>