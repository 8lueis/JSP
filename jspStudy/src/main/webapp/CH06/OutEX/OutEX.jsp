<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>OutEX.jsp</h2>
<hr>
<%
	String name = "hong";
	// <p>나의 아이디는 hong입니다. </p>
	out.println("<p>나의 아이디는 "+ name + "입니다. </p>");
	
%>

<!-- 표현식으로 출력하기 -->
<p> 나의 아이디는 <%= name  %>입니다. </p>
</body>
</html>