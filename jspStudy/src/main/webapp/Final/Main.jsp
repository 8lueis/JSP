<%@page import="FinalDB.FinalDO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비일상: 기록지</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
<!-- 부트스트랩 CSS 라이브러리 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anoymous">
<!-- 부트스트랩 JS 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>
.custom-card {
  width: 600px;
  border: 1px solid #fff;
  border-radius: 10%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  padding: 15px;
  margin-top: 10%;
}
</style>
<body>
<!-- 네비 -->
<jsp:include page="Nav.jsp"></jsp:include>

<div class="container">

	<!-- 새로운 포스트 추가 -->
	<button style="box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);" type="button" class="btn btn-info btn-sm" onclick="location.href='Form.jsp'">작성하기</button>
  
  	<!-- DO 단위 출력 -->
  	<jsp:useBean id="fdao" class="FinalDB.FinalDAO" scope="application" />
	<%
		ArrayList<FinalDO> v = fdao.getAllPost();
	%>

<div class="row">
	<%
		for (int i = 0; i < v.size(); i++) {
			FinalDO fdo = v.get(i);
	%>
	<div class="col">
	  <div class="custom-card" style="width: 18rem;">
	    <div class="card-body">
	      
	      <!-- 선택에 맞는 icon으로 출력 -- 챗지피티 -->
	      <div style="font-size: 1.6rem; margin-bottom: 10px;" >
	      	<%String choice = fdo.getChoice();if ("movie".equals(choice)) {%>
			<i class="bi bi-film" title="영화"></i><%} else if ("exhibition".equals(choice)) {%>
			<i class="bi bi-easel" title="전시"></i><%} else if ("book".equals(choice)) {%>
			<i class="bi bi-book" title="독서"></i><%} else if ("concert".equals(choice)) {%>
			<i class="bi bi-binoculars-fill" title="공연"></i><%} else if ("etc".equals(choice)) {%>
			<i class="bi bi-heart" title="기타"></i><%} else {%><%= choice %><%}%>
	      </div>
	      
	      <div style="font-size: 0.75rem"><p class="badge bg-info text-dark">제목</p> <%= fdo.getTitle() %></div>
	      <div style="font-size: 0.75rem"><p class="badge bg-info text-dark">날짜</p> <%= fdo.getDate() %></div>
	      <div style="font-size: 0.75rem;"><p class="badge bg-info text-dark " >기록</p></div>
	      <div style="height:100px;"><div style="margin-bottom:10px; max-height: 100px; overflow-y: auto; font-size: 0.75rem;"><%= fdo.getMemo() %></div></div>
	      
	      <button type="button" class="btn badge bg-light text-dark" onclick="location.href='PostModify.jsp?id=<%= fdo.getId() %>'">수정</button>
	      <button type="button" class="btn badge bg-light text-dark" onclick="location.href='PostDelete.jsp?id=<%= fdo.getId() %>'">삭제</button>
	    </div>
	  </div>
	</div>
<%
	} // for 끝
%>
</div>

</div>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>