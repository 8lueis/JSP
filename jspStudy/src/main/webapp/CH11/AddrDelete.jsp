<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="adao" class="addrDB.AddrDAO" scope="application" />
<%
	int num = Integer.parseInt(request.getParameter("num"));
	adao.deleteAddress(num);
	response.sendRedirect("AddressList.jsp");
%>
</body>
</html>