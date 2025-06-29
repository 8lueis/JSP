<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseMain</title>
</head>
<body>
<h2>ResponseMain.jsp</h2>
<hr>
<form action="ResponseProc1.jsp" method="get">
<br>
	<div>
		아이디: <input type="text" name="id">
	</div>
	<div>
		비밀번호: <input type="password" name="password">
	</div>
	<br>
	<div>
		<input type="submit" value="제출">
		<input type="reset" value="취소">
	</div>
</form>
</body>
</html>