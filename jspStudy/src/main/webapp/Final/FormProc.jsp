<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="fdo" class="FinalDB.FinalDO">
	<jsp:setProperty name="fdo" property="*"></jsp:setProperty>
</jsp:useBean>

<jsp:useBean id="fdao" class="FinalDB.FinalDAO" />

<%

// Form 입력 정보 FinalDO에 저장
fdao.insertPost(fdo);
// 전체 보기 => 메인 
response.sendRedirect("Main.jsp");

%>
</body>
</html>