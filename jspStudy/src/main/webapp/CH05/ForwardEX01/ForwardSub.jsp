<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ForwardSub.jsp</h2>
	<hr>
	<p>
		email:
		<%=request.getParameter("email")%>
		<br> cell:
		<%=request.getParameter("cell")%>
	</p>
</body>
</html>