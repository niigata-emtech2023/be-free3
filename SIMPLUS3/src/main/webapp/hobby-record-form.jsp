<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>自己紹介・趣味登録画面</title>
</head>
<body>
      <h1>自己紹介・趣味選択</h1>
      
      
       <form action="hobby-insert-confirm-servlet"method="post">
       趣味名<span>※必須</span>：
          <select name="hobbyName">
                 <option></option>
                 <option value="H001">映画</option>
                 <option value="H002">サッカー</option>
                 <option value="H003">旅行</option>
                 <option value="H004">野球</option>
                 <option value="H005">バスケットボール</option>
                 <option value="H006">その他インドア</option>
                 <option value="H007">その他アウトドア</option>
                 <option value="H000">未設定</option>
          </select><br>
       自己紹介：<textarea name="selfintroduction" maxlength="400"></textarea>
                 <input type="submit" value="次へ">
       </form>
       <form action="menu.jsp"method="post">
                 <input type="submit" value="メニューへ戻る">
       </form>>       
</body>
</html>