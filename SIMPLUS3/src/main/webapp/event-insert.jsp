<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内イベント情報登録画面</title>
</head>
<body>
<%@ include file="header.jsp" %>
	<form action="event-insert-confirm-servlet"method="post">
		イベントコード:<span>※必須</span><input type="text" size="10" name="eventCode" required><br>
		イベント名:<span>※必須</span><input type="text" size="10" name="eventName" required><br>
		開催者名:<span>※必須</span><input type="text" size="10" name="organizer" required><br>
		開催日時:<span>※必須</span><input type="date" size="10" name="eventDate" required><br>
		開催場所:<span>※必須</span><input type="text" size="10" name="eventPlace" required><br>
		イベント詳細:<span>※必須</span><textarea name="selfIntroduction" cols="40" rows="3"  required>
		</textarea><br>
		
		<input type="submit" value="確認" class="c-form-submit-button">
	</form>
	
	<form action="menu.jsp" method="post">
    	<input type="submit" value="メニューへ戻る"  class="c-form-submit-button2"> 
    </form>
    
    <%@ include file="footer.jsp" %>
</body>
</html>