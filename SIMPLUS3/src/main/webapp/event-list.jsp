<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List,model.entity.EventBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント一覧画面</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/event_table.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<%@ include file="header.jsp" %>
	<div class="container">
		<h1>社内イベント一覧画面</h1>
		<%
		List<EventBean> eventList = (List<EventBean>) request.getAttribute("eventList");
		%>
		<table>
			<thead>
				<tr>
					<th class="th6">イベント<br>コード</th>
					<th class="th7">イベント名</th>
					<th class="th8">開催日</th>
					<th class="th9"></th>
				</tr>
			</thead>
			<tbody>
				<%
				for (EventBean event : eventList) {
				%>
				<tr>
					<td class="td6"><span class="str_td"> <%=event.getEventCode()%>
					</span></td>
					<td class="td7"><%=event.getEventName()%></td>
					<td class="td8"><%=event.getEventDate()%></td>
					<td class="td9">
						<form action="event-detail-servlet" method="POST">
							<input type="hidden" name="eventCode"
								value="<%=event.getEventCode()%>"> <input type="submit"
								value="詳細表示" class="detail-submit">
						</form>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>

		<%
		if ("2" == session.getAttribute("authority")) {
		%>
		<form action="menu2.jsp" method="POST">
			<input type="submit" value="メニューに戻る" class="main_submit">
		</form>
		<%
		} else {
		%>
		<form action="menu.jsp" method="POST">
			<input type="submit" value="メニューに戻る" class="main_submit">
		</form>
		<%
		}
		%>
	</div>

</body>
</html>