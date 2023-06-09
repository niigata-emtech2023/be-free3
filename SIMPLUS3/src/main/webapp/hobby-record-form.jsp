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
      
      <%
		List<EmployeeBean> employeeList
			= (List<EmployeeBean>) request.getAttribute("employeeList");
	    %>
      
       <form action="hobby-insert-confirm-servlet"method="post">
       <table class ="one_table">
         <tr><th>設定したい従業員<span class="req_span">必須</span></th>
           <td class="normal_td">
             <div class="c-form-select">
                   <select name="employeeCode"required>
                     <option selected>選択してください</option>
                         <%
			                 for (EmployeeBean employee : employeeList) {
		                 %>
		                 <option value="<%=employee.getEmployeeCode()%>"><%=employee.getEmployeeCode()%>: <%=employee.getSurName() + employee.getFirstName()%></option>
		                 <%
			                 }
		                 %>
                   </select>
               </div>
             <!-- <input class="form_text" type="text" size="10" name="employeeCode" required> -->
           </td></tr>
         <tr><th>趣味名<span class="req_span">必須</span></th><td class="normal_td">
         <div class="c-form-select">
           <select name="hobbyName"required>
                 <option selected>選択してください</option>
                 <option value="H000">H000:未選択</option>
                 <option value="H001">H001:映画</option>
                 <option value="H002">H002:サッカー</option>
                 <option value="H003">H003:旅行</option>
                 <option value="H004">H004:野球</option>
                 <option value="H005">H005:バスケットボール</option>
                 <option value="H006">H006:料理</option>
                 <option value="H007">H007:ヨガ</option>
                 <option value="H008">H008:ゲーム</option>
                 <option value="H009">H009:ボードゲーム</option>
                 <option value="H010">H010:釣り</option>
                 <option value="H011">H011:アニメ</option>
                 <option value="H012">H012:読書</option>
                 <option value="H013">H013:筋トレ</option>
                 <option value="H014">H014:音楽</option>
                 <option value="H015">H015:アイドル</option>
                 <option value="H016">H016:写真</option>
                 <option value="H017">H017:ファッション</option>
                 <option value="H018">H018:インテリア</option>
                 <option value="H019">H019:人間観察</option>
                 <option value="H020">H020:美容</option>
                 <option value="H021">H021:車</option>
                 <option value="H022">H022:絵</option>
                 <option value="H023">H023:動物</option>
                 <option value="H024">H024:スポーツ観戦</option>
                 <option value="H025">H025:カフェ</option>
                 <option value="H026">H026:キャンプ</option>
                 <option value="H027">H027:その他インドア</option>
                 <option value="H028">H028:その他アウトドア</option>
            </select>
           </div>
           </td></tr>
           <tr><th>自己紹介<br><p class="note">400字以内</p></th><td class="normal_td"><textarea name="selfintroduction" maxlength="400" cols="40" rows="10">はじめまして！よろしくね！</textarea></td></tr>
         </table>
                 <input type="submit" value="確認" class="c-form-submit-button">
       </form>
       <form action="menu.jsp"method="post">
                 <input type="submit" value="登録を中止してメニューへ戻る" class="c-form-submit-button2">
       </form>
      </div>      
</body>
</html>