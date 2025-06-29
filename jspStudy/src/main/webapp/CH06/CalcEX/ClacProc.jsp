<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>계산 결과</h2>
<hr>

<% 

	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	String operator = request.getParameter("operator");
	
	int result = 0;
	
	if (operator.equals("+")){
		result = num1 + num2;
	}else if(operator.equals("-")){
		result = num1 - num2;
	}else if(operator.equals("*")){
		result = num1 * num2;
	}else if(operator.equals("/")){
		result = num1 / num2;
	}else
		result = 0;
		
%>

<%= num1 %> %nbsp <%= operator %> &nbsp <%= num2 %> = <%=result %>

<br>
<!-- 시험 출제 onclick -->
<input type="botton" value="다시 계산하기" onclick="location.href='CalcMain.jsp'">
</body>
</html>