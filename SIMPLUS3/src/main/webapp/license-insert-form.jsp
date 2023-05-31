<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保有資格情報登録画面</title>
</head>
<body>
      
      <h1>保有資格情報登録画面</h1>
         
       
         <form action="license-insert-confirm-servlet"method="post">
         設定したい従業員のコードを入力してください<span>必須</span>：<input type="text" size="10" name="employeeCode" required><br>
         保有資格選択<span>※必須</span>：
          <select name="licenceCode">
                 <option></option>
                 <option value="L001">基本情報技術者試験</option>
                 <option value="L002">応用情報技術者試験</option>
                 <option value="L003">ITパスポート</option>
                 <option value="L000">未所持</option>
          </select><br>
                 <input type="submit"value="確認">
      </form>
      <form action="menu.jsp"method="post">
                 <input type="submit"value="メニューへ戻る">
             
      </form>

</body>
</html>