<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>

</head>
<body>
<jsp:useBean id="fdo" class="FinalDB.FinalDO">
	<jsp:setProperty name="fdo" property="*" />
</jsp:useBean>

<jsp:useBean id="fdao" class="FinalDB.FinalDAO" scope="application" />

<%
	fdao.modifyPost(fdo);
	response.sendRedirect("Main.jsp");
%>
</body>
</html>