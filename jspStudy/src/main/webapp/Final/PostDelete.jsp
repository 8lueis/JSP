<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="fdao" class="FinalDB.FinalDAO" scope="application" />

<%
int id = Integer.parseInt(request.getParameter("id"));
fdao.deletePost(id);
response.sendRedirect("Main.jsp");
%>
</body>
</html>