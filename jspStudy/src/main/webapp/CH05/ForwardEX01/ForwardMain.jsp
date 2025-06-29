<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ForwardMain.jsp</h2>
	<hr>
	<jsp:forward page="ForwardSub.jsp">
		<jsp:param value="test@test.com" name="email" />
		<jsp:param value="010-1111-1111" name="cell" />
	</jsp:forward>
</body>
</html>