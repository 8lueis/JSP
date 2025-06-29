<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Result</title>
</head>
<body>
	<h2>Request Result</h2>
	<hr>
	<table border="1" style="border-collapse: collapse">
		<tr height="60" align="center">
			<td width="100">이름</td>
			<td width="200"><%= request.getParameter("username") %></td>
		</tr>
		<tr height="60" align="center">
			<td width="100">직업</td>
			<td width="200"><%= request.getParameter("job") %></td>
		</tr>
		<tr height="60" align="center">
			<td width="100">관심 분야</td>
			<td width="200">
				<%
						// favorite 이름으로 전송되는 데이터는 여러 개가 있을 것 (checkbox 중복 선택) == 배열로 받아야 함 => getParameterValues 사용 
						String favorites[] = request.getParameterValues("favorite");
					for(int i=0; i<favorites.length; i++){

					%> <%= favorites[i] %> &nbsp <%
					}
					%>
			</td>
		</tr>
	</table>
</body>
</html>