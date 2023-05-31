<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>従業員情報登録画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert_form.css">
</head>
<body>
<%@ include file="header.jsp" %>
  <div class = "container">
   <form action="employee-insert-confirm-servlet"method="post">
   		<h1>従業員情報登録</h1>
		   <table class ="one_table">
           <!-- <tr><th>従業員コード<span class="req_span">必須</span></th><td class="normal_td"><input type="text" size="5" name="employeeCode" required class="form_text"></td></tr> -->
               <tr><th>氏名（かな氏名）<span class="req_span">必須</span></th><td class="normal_td">氏：<input type="text" size="7"  name="sur_name"  required class="form_text">　名：<input type="text" size="7"  name="first_name"  required class="form_text"><br>（かな）:<input type="text" size="7" name="sur_kana_name" required class="form_text">　<input type="text" size="7" name="first_kana_name" required class="form_text"><td></tr>
           <!-- <table class ="two_table"  align="left">    
               <tr><th>メールアドレス<span class="req_span">必須</span></th><td class="normal_td"><input type="email" size="10" name="mail"  required  placeholder="「@」のあとも含めて入力してください" class="form_text"></td></tr>
   		   </table> -->
   		   <!-- <table class ="two_table">
   			   <tr><th>電話番号<span class="req_span">必須</span><p class="note">ハイフンありで入力</p></th><td class="normal_td"><input type="tel" size="13" maxlength="13" name="tel" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="（例）111-2222-3333" required class="form_text"></td></tr>
  		   </table> -->
  			   <tr><th>住所<span class="req_span">必須</span></th><td class="normal_td"><input type="text" size="40" name="address" required placeholder="住所を入力してください" class="form_text">
   			   <tr><th>性別<span class="req_span">必須</span></th><td class="white_td">
		         <fieldset class="radio-002">
                   <label>
                     <input type="radio" name="gender" value="0" checked="checked">
                     未設定
                   </label>
                   <label>
                     <input type="radio" name="gender" value="1">
                     男
                   </label>
                   <label>
                     <input type="radio" name="gender" value="2">
                     女
                   </label>
                 </fieldset>
		       </td></tr>
		     </table>
		     <table class ="two_table" align="left">
		        <tr><th>所属部署</th><td class="normal_td">
  			    <div class="c-form-select">
                  <select name="sectionCode" >
                     <option value="S000">未確定</option>
				     <option value="S001">経理部</option>
				     <option value="S002">営業部</option>
				     <option value="S003">開発部</option>
				     <option value="S004">研修部</option>
				  </select>
			    </div>
			    </td></tr>
		        <tr><th>メールアドレス<span class="req_span">必須</span></th><td class="normal_td"><input type="email" size="17" name="mail"  required  placeholder="「@」のあとも含めて入力してください" class="form_text"></td></tr>    
  				<tr><th>生年月日<span class="req_span">必須</span></th><td class="normal_td"><input type="date" name="birth_date"  required></td></tr>
  			 </table>
  			 <table class="two_table">
  			    <tr><th>従業員コード<span class="req_span">必須</span></th><td class="normal_td"><input type="text" size="5" name="employeeCode" required class="form_text"></td></tr>
  			    <tr><th>電話番号<span class="req_span">必須</span><p class="note">ハイフンありで入力</p></th><td class="normal_td"><input type="tel" size="13" maxlength="13" name="tel" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="（例）111-2222-3333" required class="form_text"></td></tr>
  				<tr><th>入社日<span class="req_span">必須</span></th><td class="normal_td"><input type="date" name="joining_date" required></td></tr>
  			 </table>

                <input type="submit" value="確認" class="c-form-submit-button">
                </form>
                
                <form action="menu.jsp" method="post">
                	<input type="submit" value="登録を中止してメニューへ戻る" class="c-form-submit-button2"> 
                </form>
  </div>
<%@ include file="footer.jsp" %>
</body>
</html>