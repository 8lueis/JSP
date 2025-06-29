<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 수정된 값 읽고 데이터 수정 그리고 AddressList.jsp로 이동해 수정 내용 확인 -->

<jsp:useBean id="ado" class="PreAddrDB.PreAddrDO">
	<jsp:setProperty name="ado" property="*" />
</jsp:useBean>

<jsp:useBean id="adao" class="PreAddrDB.PreAddrDAO" scope="application">
</jsp:useBean>

<% adao.modifyAddress(ado); // 수정된 데이터 저장
response.sendRedirect("AddressList.jsp"); // 수정 데이터 확인
%>
</body>
</html>