<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
	<h2> Main.jsp </h2>
	<hr>
	<jsp:include page="Footer.jsp">
		<jsp:param value="hkxhk@naver.com" name="mail"/>
		<jsp:param value="010-1111-2222" name="cell"/>
	</jsp:include>
</body>
</html>