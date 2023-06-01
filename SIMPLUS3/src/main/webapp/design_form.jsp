<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>デザインの設定</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert_form.css">
</head>
<body>
<%@ include file="header.jsp" %>
	<div class = "container">
      <h1>デザインの設定</h1>
      
       <form action="design-servlet"method="post">
       <table class ="one_table">
         <tr><th>文字の大きさ</th><td class="normal_td">
           <fieldset class="radio-002">
                   <label>
                     <input type="radio" name="font-size" value="small">
                     small
                   </label>
                   <label>
                     <input type="radio" name="font-size" value="normal" checked="checked">
                     normal
                   </label>
                   <label>
                     <input type="radio" name="font-size" value="large">
                     large
                   </label>
                 </fieldset>
         </td></tr>
         <tr><th>デザイン</th><td class="normal_td">
           <fieldset class="radio-002">
                   <label>
                     <input type="radio" name="site_color" value="0" checked="checked">
                     デザイン１
                   </label>
                   <label>
                     <input type="radio" name="site_color" value="1">
                     デザイン２
                   </label>
                 </fieldset>
         </td></tr>
         </table>
                 <input type="submit" value="設定を確定してメニュー画面に移動する" class="c-form-submit-button">
       </form>
       <form action="menu.jsp"method="post">
                 <input type="submit" value="設定を中止してメニューへ戻る" class="c-form-submit-button2">
       </form>
      </div>      
</body>
</html>