<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseProc1</title>
</head>
<body>
<h2>ResponseProc1.jsp</h2>
<hr>

<%
    // request에서 id와 password 파라미터를 받아 변수에 저장 (안 하면 오류)
    String id = request.getParameter("id");
    String password = request.getParameter("password");
%>


<p>id: <%= request.getParameter("id") %></p>
<p>password: <%= request.getParameter("password") %></p>


 
<jsp:forward page="ResponseProc2.jsp">
	<jsp:param name="id" value="<%= id %>" />
	<jsp:param name="password" value="<%= password %>" />
</jsp:forward>


<%--
ResponseProc1 --> ResponseProc2 이동하기
1. response.sendRedirect() 이용해 이동 
새로운 페이지로 이동하면서 새로운 request 객체가 생성되어 
id, password에 대한 정보를 갖고 있지 않음 -> responseProc2.jsp(3...)에서는
id, password에 대한 정보가 안 뜸 

2. 정보를 가지고 이동하려면?
responseProc2.jsp로 전달해 id, password를 출력 
우리가 배운 내용에서 jsp response.forward() 이용해 이동

이 방법이 가능한 이유?
완전한 페이지 이동이면 새로운 request 객체가 생성되어서 정보 전달이 어려울 테지만
forward 액션 태그는 페이지 이동처럼 보이지만 responseProc2.jsp내용이 
responseProc1.jsp 페이지로 가져와서 출력되기 때문에 url을 보면 확인 가능함 

기존의 responseProc1.jsp의 reqeust 객체를 그대로 활용이 가능해서 
id, password 값 출력이 가능띠 

<%
	response.sendRedirect("ResponseProc2.jsp");
%>

 --%>
</body>
</html>