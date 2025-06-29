<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>BootProc.jsp</h2>
	<hr>
	<p>User Name: <%= request.getParameter("username")%></p>
	<p>Email Address: <%= request.getParameter("email")%></p>
	<p>Telephone: <%= request.getParameter("moblie")%></p>
	<p>Hobby: <%= request.getParameter("hobby")%></p>
	<p>Job Interests: </p>
	<%
		// 체크 박스의 name을 배열로 가져와 읽음 
		String[] jobs = request.getParameterValues("job");
		for (int i=0; i<jobs.length; i++){
	%>
	<%= jobs[i] %> &nbsp 
	<%
		}
	%>
	
</body>
</html>