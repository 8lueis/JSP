<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>계산기 연습</h2>
	<hr>
	<form action="CalcProc.jsp" method="get">
		<!-- size:  문자 개수 기준으로 입력창의 가로 너비 == 글자 -->
		<input type="text" name="num1" width=200 size=10>
		&nbsp
		<select name="operator">
			<option value="+">+</option>	
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>	
		</select>
		&nbsp
		<input type="text" name="num2" width=200 size=10>
		
		<input type="submit" value="계산">
		<input type="reset" value="다시 입력">
	</form>
</body>
</html>