<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>out.println()</h2>
	<%
		for(int i=1; i<=10; i++){
			out.println(i+"<br>");
		}
	%>
	<h2>표현식 Expression</h2>
	<%
		for(int i=1; i<=10; i++){
	%>
	<%= i %><br>
	<%
		}
	%>
	<h2>표현식 2중 for문 구구단</h2>
	<%
		for(int i=2; i<=9; i++){
			if (i % 2 == 0){
				for(int j=1; j<=9; j++){
		
	%>
	<%= i %> * <%= j %> = <%= i*j %>
	<br>
		<%-- 한 단이 끝날 때마다 띄어서 보여주기 위함 --%>
		
	<%
				} 
				%>
	<br>
	<%
				}
				%>
	<%
		}
	%>
	
	<h2> *표 출력하기1 </h2>
	<% 
		int i, j;
		for(i=0; i<5; i++){
			for(j=0; j<=(i); j++){
				
	%>
	<%= '*' %>
	<% } %>
	<br>
	<%
		}
	%>
	
	<h2> *표 출력하기2 </h2>
	<% 
		int a, b;
		for(a=5; a>=1; a--){
			for(b=1; b<=(a); b++){
				
	%>
	<%= '*' %>
	<% } %>
	<br>
	<%
		}
	%>

	
</body>
</html>