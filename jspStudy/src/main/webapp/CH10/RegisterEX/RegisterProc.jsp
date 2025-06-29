<!-- ctrl + space bar -->
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>RegisterProc.jsp</h2>
<hr>
<p>이름: <%= request.getParameter("name") %></p>
<p>메일: <%= request.getParameter("email") %></p>

<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String email = request.getParameter("email");

// mysql 
String id = "root";
String passwd = "111111";
String url = "jdbc:mysql://localhost:3308/jspdb?characterEncoding=utf-8";

//JDBC 기본 클래스 선언 
Connection con = null; // DB 연결
PreparedStatement pstmt = null; // SQL문 구성 
ResultSet rs = null; // SQL문 실행 결과 처리 

try{
	
	// 1. 드라이버 로딩 
	Class.forName("com.mysql.jdbc.Driver");

	// 2. DB 정보 & 연결 
	con = DriverManager.getConnection(url, id, passwd); // DB 연결

	// 3. sql문 생성 
	String sql = "insert into register values (?,?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("name"));
	pstmt.setString(2, request.getParameter("email"));

	// 4. sql문 실행
	pstmt.executeUpdate();
	out.println("데이터베이스 업데이트 완료");

	// 5. 연결 종료 
	con.close();
}catch(SQLException e){
	System.out.println(e);
}

%>
<h2> 등록된 이벤트 당첨자 목록 </h2>

<%
try{
	
	// 2. DB 정보 & 연결 
	con = DriverManager.getConnection(url, id, passwd); // DB 연결

	// 3. sql문 생성 
	String sql = "select * from register";
	pstmt = con.prepareStatement(sql);

	// 4. sql문 실행
	rs = pstmt.executeQuery();
	int i = 1;
	while(rs.next()){ // rs.next() : 각각의 row 데이터에 접근 
		out.println(i + " <b>name: </b>" + rs.getString(1) + ", <b>mail: </b>" + rs.getString(2)+ "<br>");
	// rs.getString(1) : row 첫 번째 데이터, (2): 두 번째 데이터 
		i ++;
	}
	

	// 5. 연결 종료 
	con.close();
}catch(SQLException e){
	System.out.println(e);
}
con.close();
pstmt.close();
rs.close();

%>

</body>
</html>