<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Form</title>
</head>
<body>
<%
// 한글 깨짐 방지 => post 방식(request 객체에 담겨져 오는 데이터)의 파라미터를 받는 페이지에 추가 
request.setCharacterEncoding("utf-8");
%>
	<h2> Request Form</h2>
	<!-- action: form에서 submit click 시 서버에 요청 되는 파일 이름 -->
	<!-- mehtod: 클라이언트에서 서버로 전송되는 데이터 전송 방식 -->
	<form action="RequestResult.jsp" method="get">
		<table border="1" style="border-collapse: collapse">
			<tr height="60" align="center">
				<td width="100" >이름</td>
				<!-- name이 중요 -->
				<td width="200" ><input type="text" name="username" size="15"></td>
			</tr>
			<tr height="60" align="center">
				<td width="100" >직업</td>
				<td width="200" ><select name="job">
					<option selected>Engineer</option>
					<option>CEO</option>
					<option>Student</option>
					<option>Fighter</option>
				</select>
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100" >관심 분야</td>
				<td width="200" >
					<input type="checkbox" name="favorite" value="Plotic">정치
					<input type="checkbox" name="favorite" value="Society">사회
					<input type="checkbox" name="favorite" value="Information">정보
				</td>
			</tr>
			<tr height="60" align="center">
				<td colspan="2">
					<input type="submit" value="전송"> &nbsp &nbsp 
					<input type="reset" value="취소">  
				</td>
			</tr>
			
			<!-- submit click : (get) http://localhost:9090/jspStudy/CH06/RequestResult.jsp?username=test&job=Engineer 
				submit click : (post) http://localhost:9090/jspStudy/CH06/RequestResult.jsp
			-->
		</table>
	</form>
</body>
</html>