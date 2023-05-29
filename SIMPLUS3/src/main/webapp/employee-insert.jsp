<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
        <form action="employee-insert-servlet"method="post">
          <h1>従業員情報登録</h1>
            　　従業員コード　※必須<input type="text"size="10"name="code" placeholder="従業員コードを入力してください" required><br>
            　　氏　　　　　　※必須<input type="text"size="10"name="sur_name" placeholder="氏を入力してください" required>
                名　　　　　　※必須<input type="text"size="10"name="first_name" placeholder="名を入力してください" required><br>
                氏(かな)　　　※必須<input type="text"size="10"name="sur_kana_name" placeholder="氏(かな)を入力してください" required>
                名(かな)　　　※必須<input type="text"size="10"name="first_kana_name" placeholder="名(かな)を入力してください" required><br>
                メールアドレス※必須<input type="text"size="10"name="mail" placeholder="メールアドレスを入力してください" required><br>
                電話番号　　　※必須<input type="text"size="10"name="tel" placeholder="TELを入力してください" required><br>
                住所　　　　　※必須<input type="text"size="10"name="address" placeholder="住所を入力してください" required><br>
                性別　　　　　      <input type="radio"name="gender"value="male">男
                                    <input type="radio"name="gender"value="female">女
                生年月日　　　※必須<input type="date"name="birth_date" placeholder="生年月日を入力してください" required><br>
                所属部署　　　※必須<input type="text"size="10"name="section" placeholder="所属部署を入力してください" required><br>
                入社日　　　　※必須<input type="date"name="joining_date" placeholder="入社日を入力してください" required><br>
                
                
                <input type="submit"value="次へ">
                </form>
                
                <form action="menu-servlet"method="post">
                
                <input type="submit"value="メニューへ戻る">
                     
                </form>
<body>

</body>
</html>