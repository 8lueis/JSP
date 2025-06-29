<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>ApplicationMain.jsp</h2>
<!--  -->
<p>서버 정보 : 
<%= application.getServerInfo()
%>
</p>

<%
application.setAttribute("username", "hong");
application.setAttribute("visitCount", 1);
%>


<a href="ApplicationProc.jsp">ApplicationProc으로 이동</a>
</body>
</html>