<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>LoginProc.jsp</h2>
<hr>

<!-- jsp:useBean을 사용해 객체 생성 -->
<jsp:useBean id="login" class="jspStudy.LoginBean"></jsp:useBean>

<!-- login 빈즈 객체에 id와 password 멤버 변수의 값을 
input 태그로부터 전달되는 값으로 저장  -->
<jsp:setProperty property="id" name="login" />
<jsp:setProperty property="password" name="login" />

<!-- login 빈즈에 저장된 값을 출력 -->
<p>id(beans): <jsp:getProperty property="id" name="login" /></p>
<p>password(beans): <jsp:getProperty property="password" name="login"/></p>

<!-- *(all)을 이용해 한방에 input 태그로부터 전달되는 모든 값을 저장할 수 있음 -->
<jsp:useBean id="login2" class="jspStudy.LoginBean"></jsp:useBean>
<jsp:setProperty property="*" name="login2"/>

<p>id(beans *): <jsp:getProperty property="id" name="login2" /></p>
<p>password(beans *): <jsp:getProperty property="password" name="login2" /></p>


<p>id(beans * + getter()): <%= login2.getId() %> </p>
<p>password(beans * + getter()): <%= login2.getPassword() %> </p>

<%
// LoginBean.java의 데모 데이터와 Form 입력 값의 일치 여부 확인 
if(login.checkUser()){
	out.println("로그인 성공");
}else{
	out.println("로그인 실패");
}
%>
<%
// 기존 방법 
String id = request.getParameter("id");
String password = request.getParameter("password");
%>
	<p>id(request): <%= request.getParameter("id") %></p>
	<p>password(request): <%= request.getParameter("password") %></p>
</body>
</html>