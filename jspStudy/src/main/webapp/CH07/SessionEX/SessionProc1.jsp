<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>SessionProc1.jsp</h2>
<p>

ID: <%= 
request.getParameter("id")%>

</p>

<p>
Mobile: 
<%=request.getParameter("mobile") %>
</p>


<%

String id = request.getParameter("id");
// session. 객체를 사용해 정보를 저장 (여러 페이지에서 정보 공유가 가능하도록)
//setAttribute("값의 이름", "값");
//gwtAttribute("이름"); // 세선 객체로부터 정보 읽기 
session.setAttribute("id", id);
%>

<p>
ID(session): <%= session.getAttribute("id") %>
</p>
<p>
<a href="SessionProc2.jsp">SesssionProc2</a>
</p>

<p>
<a href="SessionProc3.jsp">SesssionProc3</a></p>
</body>
</html>