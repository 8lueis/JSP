<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
<!-- 로그인 정보를 활용해 세션에 저장 -> 다른 페이지에서 이용 가능하도록 세선에 저장하는 페이지-->
	<h2> LoginProc.jsp</h2>
	
	
	<%
	String id = request.getParameter("id");
	
	// id를 세션에 저장
	session.setAttribute("id", id);
	
	// id 저장 후 Main.jsp로 이동
	response.sendRedirect("Main.jsp");
	%>
	
</body>
</html>