<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>LoginForm.jsp</h2>
	<hr>
	<form action="LoginProc.jsp" method="post">
		<div>아이디: <input type="text" name="id"></div>
		<div>패스워드: <input type="text" name="password"></div>
		<div><input type="submit" value="로그인">
		<input type="reset" value="취소"></div>
	</form>

</body>
</html>