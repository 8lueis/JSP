<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="ado" class="PreAddrDB.PreAddrDO">
	<jsp:setProperty name="ado" property="*" /> 
	<!-- 입력 정보를 DO에 저장하겠다 -->
</jsp:useBean>
<jsp:useBean id="adao" class="PreAddrDB.PreAddrDAO">
	<%
		adao.insertAddr(ado); // DAO 트랜잭션 객체: DB에 입력 값 저장
		response.sendRedirect("AddressList.jsp"); // 전체 리스트 보기
	
	%>

</jsp:useBean>

</body>
</html>