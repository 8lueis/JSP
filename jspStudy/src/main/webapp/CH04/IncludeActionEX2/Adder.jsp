<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adder</title>
</head>
<body>
<h2>Adder.jsp</h2>

<p>
<%

String a = request.getParameter("num1"); 
String b = request.getParameter("num2"); 

int a1 = Integer.parseInt(a);
int b1 = Integer.parseInt(b);

%>

<%= a1 %>+<%= b1 %>=<%= a1+b1 %>
<br>
<%= a1 + "+" + b1 + "=" + (a1+b1) %>

</p>

</body>
</html>