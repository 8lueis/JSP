<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberProc</title>
</head>
<body>
	<h2>MemberProc</h2>
	<table border="1" style="border-collapse: collapse">
		<tr height="60" align="center">
			<td width="100">이름</td>
			<td width="200"><%= request.getParameter("username") %></td>
		</tr>
		<tr height="60" align="center">
			<td width="100">학번</td>
			<td width="200"><%= request.getParameter("idnumber") %></td>
		</tr>
		<tr height="60" align="center">
			<td width="100">전화번호</td>
			<td width="200"><%= request.getParameter("cell") %></td>
		</tr>
		<tr height="60" align="center">
			<td width="100">좋아하는 캐릭터</td>
			<td width="200">
				<%
					String fa[] = request.getParameterValues("favorite");
					for(int i=0; i<fa.length; i++){
				%>
				&nbsp <%= fa[i] %> &nbsp &nbsp
				<%
					}
				%>
			</td>
		</tr>
	</table>
</body>
</html>