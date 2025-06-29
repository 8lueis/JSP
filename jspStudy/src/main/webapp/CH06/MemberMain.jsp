<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<%
request.setCharacterEncoding("utf-8");
%>
	<h2>MemberMain Form</h2>
	<form action="MemberProc.jsp" method="get">
		<table border="1" style="border-collapse: collapse">
			<tr height="60" align="center">
				<td width="100" >이름</td>
				<td width="200" ><input type="text" name="username" size="15"></td>
			</tr>
			<tr height="60" align="center">
				<td width="100">학번</td>
				<td width="200"><input type="text" name="idnumber" size="15"></td>
			</tr>
			<tr height="60" align="center">
				<td width="100">전화번호</td>
				<td width="200"><input type="text" name="cell" size="15"></td>
			</tr>
			
			<tr height="60" align="center">
				<td width="100" >좋아하는 캐릭터</td>
				<td width="200" >
					<input type="checkbox" name="favorite" value="Lion">라이언
					<input type="checkbox" name="favorite" value="Apeach">어피치
					<input type="checkbox" name="favorite" value="Muzi">무지
				</td>
			</tr>
			<tr height="60" align="center">
				<td colspan="2">
					<input type="submit" value="확인"> &nbsp &nbsp 
					<input type="reset" value="취소">  
				</td>
			</tr>
		</table>
	</form>
</body>
</body>
</html>