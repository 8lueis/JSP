<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorMain</title>
</head>
<body>
<h2>errorMain.jsp (에러 발생)</h2>
<%
	String str = "test";
	// error
	int i = Integer.parseInt(str);  
%>
</body>
</html>