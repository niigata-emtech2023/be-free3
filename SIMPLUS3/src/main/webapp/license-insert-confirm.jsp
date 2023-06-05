<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>保有資格情報登録確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm2.css">
</head>
<body> 
        <%@ include file="header.jsp" %>
        <h1>保有資格情報登録確認画面</h1>
        <div class="confirm-field">
	<p>以下の保有資格を登録します。よろしいですか？</p>
        
	    <jsp:useBean id="employee" class="model.entity.EmployeeBean" scope="session" />
	    
		<jsp:setProperty name="employee" property="employeeCode" param="employeeCode" />
	    <jsp:setProperty name="employee" property="licenseCode" param="licenseCode" />
	   	
	   	 <table>
	  <tbody>
	    <tr>
	      <th>変更したい<br>従業員のコード</th>
	      <td><jsp:getProperty  name="employee"  property="employeeCode" /></td>
	    </tr>
	    <tr>
	      <th>保有資格</th>
	      <td>
	      <div class="yokonarabi">
	      <jsp:getProperty  name="employee"  property="licenseCode" />
	      <details>
            <summary>資格名を確認する</summary>
             <div class="details-content">
            <ul class="smul">
              <li class="smli"><strong>L000</strong>: 未所持</li>
              <li class="smli"><strong>L001</strong>: 基本情報技術者試験</li>
              <li class="smli"><strong>L002</strong>: 応用情報技術者試験</li>
              <li class="smli"><strong>L003</strong>: ITパスポート</li>
              <li class="smli"><strong>L004</strong>: 情報セキュリティマネジメント</li>
              <li class="smli"><strong>L005</strong>: システムアーキテクト試験</li>
              <li class="smli"><strong>L006</strong>: エンベデッドシステムスペシャリスト試験</li>
              <li class="smli"><strong>L007</strong>: データベーススペシャリスト試験</li>
              <li class="smli"><strong>L008</strong>: ネットワークスペシャリスト試験</li>
              <li class="smli"><strong>L009</strong>: 情報処理安全確保支援士試験</li>
              <li class="smli"><strong>L010</strong>: ITストラテジスト試験</li>
              <li class="smli"><strong>L011</strong>: システム監査技術者試験</li>
              <li class="smli"><strong>L012</strong>: プロジェクトマネージャ試験</li>
              <li class="smli"><strong>L013</strong>: ITサービスマネージャ試験</li>
              <li class="smli"><strong>L014</strong>: Webクリエイター能力認定試験</li>
              <li class="smli"><strong>L015</strong>: Python試験</li>
              <li class="smli"><strong>L016</strong>: Illustrator（R）クリエイター能力認定試験</li>
              <li class="smli"><strong>L017</strong>: Photoshop（R）クリエイター能力認定試験</li>
              <li class="smli"><strong>L018</strong>: ORACLE MASTER Silver SQL</li>
            </ul>
            </div>
          </details>
          </div></td>
	    </tr>
	   
	  </tbody>
	</table>
	   	 
      <div class="double_submit">
      <ul class="sub_ul">
        <li class="sub_li">
        <form action="license-insert-servlet" method="POST">
	      <input type="submit" value="確定" class="c-form-submit-button">
	    </form>
        </li>
        <li class="sub_li">
        <form action="license-insert-form.jsp" method="post">
	      <input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>" class="c-form-back-button">
	      <input type="submit" value="戻る" class="c-form-submit-button4">
	    </form>
        </li>
      </ul>
     </div>
    </div>

</body>
</html>