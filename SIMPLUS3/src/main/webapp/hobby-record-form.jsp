<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>自己紹介・趣味登録画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert_form.css">
</head>
<body>
<%@ include file="header.jsp" %>
	<div class = "container">
      <h1>自己紹介・趣味選択</h1>
      
       <form action="hobby-insert-confirm-servlet"method="post">
       <table class ="one_table">
         <tr><th>設定したい従業員のコードを入力してください<span class="req_span">必須</span></th><td class="normal_td">
         <input class="form_text" type="text" size="10" name="employeeCode" required>
         </td></tr>
         <tr><th>趣味名<span class="req_span">必須</span></th><td class="normal_td">
         <div class="c-form-select">
           <select name="hobbyName"required>
                 <option></option>
                 <option value="H000">未設定</option>
                 <option value="H001">映画</option>
                 <option value="H002">サッカー</option>
                 <option value="H003">旅行</option>
                 <option value="H004">野球</option>
                 <option value="H005">バスケットボール</option>
                 <option value="H006"></option>
                 <option value="H007"></option>
                 <option value="H008"></option>
                 <option value="H009"></option>
                 <option value="H010"></option>
                 <option value="H011"></option>
                 <option value="H012"></option>
                 <option value="H013"></option>
                 <option value="H014"></option>
                 <option value="H015"></option>
                 <option value="H016"></option>
                 <option value="H017"></option>
                 <option value="H018"></option>
                 <option value="H019"></option>
                 <option value="H020"></option>
                 <option value="H021"></option>
                 <option value="H022"></option>
                 <option value="H023"></option>
                 <option value="H024"></option>
                 <option value="H025"></option>
                 <option value="H026"></option>
                 <option value="H027">その他インドア</option>
                 <option value="H028">その他アウトドア</option>
            </select>
           </div>
           </td></tr>
           <tr><th>自己紹介</th><td class="normal_td"><textarea name="selfintroduction" maxlength="400" cols="40" rows="10">はじめまして！よろしくね！</textarea></td></tr>
         </table>
                 <input type="submit" value="確認" class="c-form-submit-button">
       </form>
       <form action="menu.jsp"method="post">
                 <input type="submit" value="登録を中止してメニューへ戻る" class="c-form-submit-button2">
       </form>
      </div>      
</body>
</html>