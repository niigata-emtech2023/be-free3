<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"import="java.util.List,model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント一覧</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/table-style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
       <div class = "container">
    <h1>社員情報一覧</h1>
	<%
		List<EventBean> employeeList
			= (List<EventBean>) request.getAttribute("eventList");
	%>
	<table>
	  <thead>
		<tr>
			<th>イベントコード</th>
			<th>イベント名</th>
			<th>開催日時</th>
			<th></th>
		</tr>
	  </thead>
	  <tbody>
		<%
			for (EventBean event : eventList) {
		%>
		<tr>
			<td><span class="str_td"><%=event.getEventCode()%></strong></td>
			<td><%=event.getEventName()%></td>
			<td><%=event.getEventDate()%></td>
			
			<td>
				<form action="employee-detail-servlet" method="POST">
					<input type="hidden" name="employeeCode" value="<%=event.getEventCode()%>">
					<input type="submit" value="詳細表示" class="detail-submit">
				</form>
			</td>
		</tr>
		<%
			}
		%>
		</tbody>
	</table>
	
	<form action="menu.jsp" method="POST">
        <input type="submit" value="メニューに戻る" class="main_submit">
	</form>
  </div>

</body>
</html>