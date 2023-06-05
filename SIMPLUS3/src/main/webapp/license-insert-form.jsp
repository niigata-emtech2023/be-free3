<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保有資格情報登録画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/insert_form.css">

</head>
<body>
  <%@ include file="header.jsp" %>
	<div class = "container">
      <h1>保有資格情報登録画面</h1>
         
         <%
		List<EmployeeBean> employeeList
			= (List<EmployeeBean>) request.getAttribute("employeeList");
	    %>
         
         <form action="license-insert-confirm-servlet"method="post">
         <table class ="one_table">
         <tr><th>変更したい従業員<span class="req_span">必須</span></th>
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
                 <!-- <input class="form_text" class="form_text" type="text" size="10" name="employeeCode" required> -->
             </td></tr>
         
         <tr><th>保有資格選択<span class="req_span">必須</span></th><td class="normal_td">
          <div class="c-form-select">
          <select name="licenceCode"required>
                 <option selected>選択してください</option>
                 <option value="L000">L000: 未所持</option>
                 <option value="L001">L001: 基本情報技術者試験</option>
                 <option value="L002">L002: 応用情報技術者試験</option>
                 <option value="L003">L003: ITパスポート</option>
                 <option value="L004">L004: 情報セキュリティマネジメント</option>
                 <option value="L005">L005: システムアーキテクト試験</option>
                 <option value="L006">L006: エンベデッドシステムスペシャリスト試験</option>
                 <option value="L007">L007: データベーススペシャリスト試験</option>
                 <option value="L008">L008: ネットワークスペシャリスト試験</option>
                 <option value="L009">L009: 情報処理安全確保支援士試験</option>
                 <option value="L010">L010: ITストラテジスト試験</option>
                 <option value="L011">L011: システム監査技術者試験</option>
                 <option value="L012">L012: プロジェクトマネージャ試験</option>
                 <option value="L013">L013: ITサービスマネージャ試験</option>
                 <option value="L014">L014: Webクリエイター能力認定試験</option>
                 <option value="L015">L015: Python試験</option>
                 <option value="L016">L016: Illustrator（R）クリエイター能力認定試験</option>
                 <option value="L017">L017: Photoshop（R）クリエイター能力認定試験</option>
                 <option value="L018">L018: ORACLE MASTER Silver SQL</option>
          </select>
          </div>
          </td></tr>
          </table>
                 <input type="submit"value="確認" class="c-form-submit-button">
      </form>
      <form action="menu.jsp"method="post">
                 <input type="submit" value="登録を中止してメニューへ戻る" class="c-form-submit-button2">
             
      </form>
     </div>

</body>
</html>