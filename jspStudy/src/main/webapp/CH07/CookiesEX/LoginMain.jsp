<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginMain.jsp</title>
</head>
<body>

<%
	// 클라이언트 컴퓨터에 저장되어 있는 쿠키를 모두 가져오기 
	// 이떄 사용되는 객체는 request 객체임~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
	
	Cookie[] cookies = request.getCookies();

	//중요한 것 => 쿠키가 여러 개 있을 수 있기 때문에 배열로 받아주는 거~~~!!!!!!!!!! Cookie[] 
	
	// id 값을 자동 설정을 위한 변수 
	String id = "";
	
	if(cookies != null){ // 쿠키 정보가 있으면
		for(int i=0; i<cookies.length; i++){ // 전체 쿠키 정보 중 
			if(cookies[i].getName().equals("id")){ // 내가 찾는 id 이름이 있으면
				id = cookies[i].getValue(); // 해당 id의 값을 id 변수에 저장 
				break;
			}
		}
	}
	
%>
	<h2>LoginMain.jsp</h2>
	<hr>
	<form action="LoginProc.jsp" method="get">
		<div>
			<!-- 아이디: <input type="text" name="id" value="hong">  -->
			<!-- String id = ""; 때문에 수정 -->
			아이디: <input type="text" name="id" value="<%= id %>" >
			<!-- value="hong" 초기값(hong)이 입력된 채로 시작 -->
		</div>
		<div>
			패스워드: <input type="text" name="password" >
		</div>
		<div>
			아이디 저장: <input type="checkbox" name="save" value="1">
			<!-- 체크 시 값 1 -->
			<!-- get 결과: http://localhost...(생략)&save=1 -->
		</div>
		<div>
			<input type="submit" value="login"> &nbsp
			<input type="reset" value="reset">
		</div>
	</form>
</body>
</html>