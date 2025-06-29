<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginProc.jsp</title>
</head>
<body>
	<h2>LoginProc.jsp</h2>
	<hr>

	<p>
		아이디:
		<%=request.getParameter("id")%></p>
	<p>
		비밀번호:
		<%=request.getParameter("password")%></p>
	
	<%
		//서버에서 쿠키를 생성할지/말지를 설정
		String save = request.getParameter("save");
		// 쿠키로 저장할 id 값도 가져올 것 
		String id = request.getParameter("id");
		
		if(save != null){ // save 체크박스가 선택이 되면
			// 1. 쿠키 객체를 생성
			Cookie cookie = new Cookie("id", id);
			// 2. 쿠키 유효기간 설정
			cookie.setMaxAge(60*3); // 3분 정도 유효
			// 3. 생성된 쿠키 값을 클라이언트에게 전송 == 이때 사용되는 객체가 response
			response.addCookie(cookie);
			System.out.println("쿠키 생성 완");
		}
		
	%>
</body>
</html>