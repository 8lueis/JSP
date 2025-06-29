<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
</head>
<body>
	<h2> Footer.jsp </h2>
	<p> 
	이메일: <%= request.getParameter("mail") %>
	전화번호: <%= request.getParameter("cell") %>
	</p>

</body>
</html>