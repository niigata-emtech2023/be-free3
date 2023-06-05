<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>自己紹介・趣味登録確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm2.css">
</head>
<body>
        <%@ include file="header.jsp" %>
       <h1>趣味・自己紹介登録確認画面</h1>
        <div class="confirm-field">
	<p>以下の趣味・自己紹介を登録します。よろしいですか？</p>
	
	    <jsp:useBean id="employee"  class="model.entity.EmployeeBean" scope="session" />
	
	    <jsp:setProperty name="employee" property="employeeCode" param="employeeCode" />
	    <jsp:setProperty name="employee" property="hobbyName" param="hobbyName" />
	    <jsp:setProperty name="employee" property="selfintroduction" param="selfintroduction" />
	     
	     <table>
	  <tbody>
	    <tr>
	      <th>設定する従業員</th>
	      <td><jsp:getProperty  name="employee"  property="employeeCode" /></td>
	    </tr>
	    <tr>
	      <th>趣味名</th>
	      <td>
	      <div class="yokonarabi"><jsp:getProperty  name="employee"  property="hobbyName" />
	      <details>
            <summary>趣味名を確認する</summary>
            <div class="details-content">
            <ul class="smul">
              <li class="smli"><strong>H000</strong>: 未選択</li>
              <li class="smli"><strong>H001</strong>: 映画</li>
              <li class="smli"><strong>H002</strong>: サッカー</li>
              <li class="smli"><strong>H003</strong>: 旅行</li>
              <li class="smli"><strong>H004</strong>: 野球</li>
              <li class="smli"><strong>H005</strong>: バスケットボール</li>
              <li class="smli"><strong>H006</strong>: 料理</li>
              <li class="smli"><strong>H007</strong>: ヨガ</li>
              <li class="smli"><strong>H008</strong>: ゲーム</li>
              <li class="smli"><strong>H009</strong>: ボードゲーム</li>
              <li class="smli"><strong>H010</strong>: 釣り</li>
              <li class="smli"><strong>H011</strong>: アニメ</li>
              <li class="smli"><strong>H012</strong>: 読書</li>
              <li class="smli"><strong>H013</strong>: 筋トレ</li>
              <li class="smli"><strong>H014</strong>: 音楽</li>
              <li class="smli"><strong>H015</strong>: アイドル</li>
              <li class="smli"><strong>H016</strong>: 写真</li>
              <li class="smli"><strong>H017</strong>: ファッション</li>
              <li class="smli"><strong>H018</strong>: インテリア</li>
              <li class="smli"><strong>H019</strong>: 人間観察</li>
              <li class="smli"><strong>H020</strong>: 美容</li>
              <li class="smli"><strong>H021</strong>: 車</li>
              <li class="smli"><strong>H022</strong>: 絵</li>
              <li class="smli"><strong>H023</strong>: 動物</li>
              <li class="smli"><strong>H024</strong>: スポーツ観戦</li>
              <li class="smli"><strong>H025</strong>: カフェ</li>
              <li class="smli"><strong>H026</strong>: キャンプ</li>
              <li class="smli"><strong>H027</strong>: その他インドア</li>
              <li class="smli"><strong>H028</strong>: その他アウトドア</li>
            </ul>
            </div>
          </details>
	      </div>
          </td>
	    </tr>
	    <tr>
	      <th>自己紹介</th>
	      <td><jsp:getProperty name="employee"  property="selfintroduction" /></td>
	    </tr>
	  </tbody>
	</table>
	     
     <div class="double_submit">
      <ul class="sub_ul">
        <li class="sub_li">
        <form action="hobby-insert-record-servlet" method="POST">
	      <input type="submit" value="確定" class="c-form-submit-button">
	    </form>
        </li>
        <li class="sub_li">
        <form action="hobby-insert-form-servlet" method="post">
	      <input type="hidden" name="eventCode" value="<%=employee.getEmployeeCode()%>" class="c-form-back-button">
	      <input type="submit" value="戻る"  class="c-form-submit-button4">
	    </form>
        </li>
      </ul>
     </div>
    </div>
       
</body>
</html>