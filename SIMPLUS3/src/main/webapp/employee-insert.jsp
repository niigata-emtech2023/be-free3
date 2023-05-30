<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報登録画面</title>
</head>
   <form action="employee-insert-confirm-servlet"method="post">
   		<h1>従業員情報登録</h1>
		   従業員コード:<span>※必須</span><input type="text" size="10" name="employeeCode" required><br>
		   氏:<span>※必須</span><input type="text" size="10"  name="sur_name"  required>
		   名:<span>※必須</span><input type="text" size="10" name="first_name"  required><br>
		   氏(かな):<span>※必須</span><input type="text" size="10" name="sur_kana_name"  required>
		   名(かな):※必須<input type="text" size="10" name="first_kana_name" required><br>
		   メールアドレス:<span>※必須</span><input type="text" size="10" name="mail"  required><br>
		   電話番号:<span>※必須</span><input type="text" size="10" name="tel"  required><br>
		   住所:<span>※必須</span><input type="text" size="10" name="address" required><br>
		   性別:<input type="radio" name="gender" value="1">男
		           <input type="radio" name="gender" value="2">女
		   生年月日:<span>※必須</span><input type="date" name="birth_date"  required><br>
		   所属部署:<span>※必須</span>
		   
		   <select name="sectionCode" >
		   	<option value="S001">経理部</option>
		   	<option value="S002">営業部</option>
		   	<option value="S003">開発部</option>
		   	<option value="S004">研修部</option>
		   </select><br>
		   
		   入社日:<span>※必須</span><input type="date" name="joining_date" required><br>
                <input type="submit" value="確認">
   </form>
                
                <form action="menu.jsp" method="post">
                	<input type="submit" value="メニューへ戻る"> 
                </form>
<body>

</body>
</html>