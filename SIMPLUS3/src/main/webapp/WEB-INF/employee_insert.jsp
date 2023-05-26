<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <form action="employee-insert-servlet"method="post">
          <h1>従業員情報登録</h1>
            　　従業員コード　※必須<input type="text"size="10"name="code"><br>
            　　氏　　　　　　※必須<input type="text"size="10"name="sur_name">
                名　　　　　　※必須<input type="text"size="10"name="first_name"><br>
                氏(かな)　　　※必須<input type="text"size="10"name="sur_kana_name">
                名(かな)　　　※必須<input type="text"size="10"name="first_kana_name"><br>
                メールアドレス※必須<input type="text"size="10"name="mail"><br>
                電話番号　　　※必須<input type="text"size="10"name="tel"><br>
                住所　　　　　※必須<input type="text"size="10"name="address"><br>
                性別　　　　　      <input type="radio"name="gender"value="male">男
                                    <input type="radio"name="gender"value="female">女
                生年月日　　　※必須<input type="date"name="birth_date"><br>
                所属部署　　　※必須<input type="text"size="10"name="section"><br>
                入社日　　　　※必須<input type="date"name="joining_date"><br>
                
                
                <input type="submit"value="次へ">
                </form>
                
                <form action="menu-servlet"method="post">
                
                     <input type="submit"value="メニューへ戻る">
                     
                </form>

</body>
</html>