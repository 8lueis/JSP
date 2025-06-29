<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="ado" class="addrDB.AddrDO">
		<jsp:setProperty property="*" name="ado" />
	</jsp:useBean>

	<jsp:useBean id="adao" class="addrDB.AddrDAO"></jsp:useBean>

<%
adao.insertAddr(ado);
response.sendRedirect("AddressList.jsp"); 

%>
	
	
</body>
</html>