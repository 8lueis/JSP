<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>
ApplicationProc.jsp
</h2>


<p> username: <%= application.getAttribute("username") %> </p>

<%
// 방문자 수 증가 구현
	Integer count = (Integer)application.getAttribute("visitCount");
	int cnt = count.intValue()+1;
	application.setAttribute("visitCount", cnt);
%>

<h2>방문자 수: <%= cnt %></h2>

</body>
</html>