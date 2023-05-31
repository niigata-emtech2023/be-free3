<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,model.entity.EmployeeBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>趣味検索結果一覧</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table-style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
<%@ include file="header.jsp" %>
  <div class = "container">
    <h1>社員情報一覧</h1>
    
    <div class="group">
      <div class="search_bar">
        他の趣味で社員検索
        <i class="fas fa-search search_icon"></i>
         <form action="employee-search-servlet" method="POST">
          <div class="c-form-select">
           <select name="hobbyName">
                 <option></option>
                 <option value="H001">映画</option>
                 <option value="H002">サッカー</option>
                 <option value="H003">旅行</option>
                 <option value="H004">野球</option>
                 <option value="H005">バスケットボール</option>
                 <option value="H006">その他インドア</option>
                 <option value="H007">その他アウトドア</option>
            </select>
         </div>
        <i class="fas fa-times search_icon"></i>
        <input type="submit" value="検索">
      </form>
    </div>
  </div>
    
	<%
		List<EmployeeBean> employeeList
			= (List<EmployeeBean>) request.getAttribute("employeeList");
	%>
	<table>
	  <thead>
		<tr>
			<th class="th1">社員コード</th>
			<th class="th2">氏名</th>
			<th class="th3">かな</th>
			<th class="th4">所属部署</th>
			<th class="th5"></th>
		</tr>
	  </thead>
	  <tbody>
		<%
			for (EmployeeBean employee : employeeList) {
		%>
		<tr>
			<td class="td1"><span class="str_td"><%=employee.getEmployeeCode()%></span></td>
			<td class="td2"><%=employee.getSurName() + employee.getFirstName()%></td>
			<td class="td3"><%=employee.getSurKanaName() + employee.getFirstKanaName()%></td>
			<td class="td4"><%=employee.getSectionName()%></td>
			<td class="td5">
				<form action="employee-detail-servlet" method="POST">
					<input type="hidden" name="employeeCode" value="<%=employee.getEmployeeCode()%>">
					<input type="submit" value="詳細表示" class="detail-submit">
				</form>
			</td>
		</tr>
		<%
			}
		%>
		</tbody>
	</table>
	
	<div class="double_submit">
	<ul>
	  <li>
	      <form action="employee-list-servlet" method="POST">
		    <input type="submit" value="社員一覧画面に戻る" class="main_submit">
	      </form>
	  </li>
	  <li>
	      <form action="menu.jsp" method="POST">
		    <input type="submit" value="メニュー画面に戻る" class="main_submit">
	      </form>
	  </li>
	</ul>
	</div>
	
  <%@ include file="footer.jsp" %>
</body>
</html>