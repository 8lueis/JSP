<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="adao" class="PreAddrDB.PreAddrDAO" scope="application" />
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		adao.deleteAddress(num);  // 데이터 삭제 
		response.sendRedirect("AddressList.jsp"); // 전체 리스트 확인 
	%> 
</body>
</html>