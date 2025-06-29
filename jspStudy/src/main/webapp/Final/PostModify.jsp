<%@page import="java.util.Arrays"%>
<%@page import="FinalDB.FinalDO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비일상: 수정 페이지</title>
<!-- 부트스트랩 CSS 라이브러리 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- 부트스트랩 JS 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<jsp:useBean id="fdao" class="FinalDB.FinalDAO"></jsp:useBean>

<%
	int id = Integer.parseInt(request.getParameter("id"));
	FinalDO fdo = fdao.getPostOne(id);
	
	String[] choiceName = {"movie", "exhibition", "book", "concert", "etc"};
	Boolean[] checkFlag = new Boolean[5];
	Arrays.fill(checkFlag, false);
	for(int i=0; i<choiceName.length; i++){
		if(fdo.getChoice().indexOf(choiceName[i]) != -1){
			// 선택 된 값에 true 
			checkFlag[i] = true;
		}
	}
%>

<div class="container" style="
	width:600px border: 1px solid #ccc; 
	border-radius:10px; 
	box-shadow:0 10px 20px rgba(0, 0, 0, 0.3); 
	padding: 20px;
	margin-top: 10%;
	">
	<p class="fw-lighter fs-5 text-center mt-3"> ——  수정 ——  </p>
		<form action="PostModifyProc.jsp" method="post">
		<!-- Hidden으로 id 전달 -->
  			<input type="hidden" name="id" value="<%= fdo.getId() %>">
		
			
			<div class="mb-3">
				<label class="form-label">나의 비일상 ✔️ </label>
				<select class="form-select" name="choice">
				<option value="movie" <%= checkFlag[0] ? "selected" : ""%>>영화</option>
				<option value="exhibition" <%= checkFlag[1] ? "selected" : ""%>>전시</option>
				<option value="book" <%= checkFlag[2] ? "selected" : ""%>>독서</option>
				<option value="concert" <%= checkFlag[3] ? "selected" : "" %>>공연</option>
				<option value="etc" <%= checkFlag[4] ? "selected" : "" %>>기타</option>
			</select>
			</div>
			
			<div class="mb-3">
				<label class="form-label">제목 🖋️ </label> 
				<input type="text" class="form-control" name="title" value="<%= fdo.getTitle() %>">
			</div>
			
			<div class="mb-3">
				<label class="form-label">날짜: 📆 </label>
				<!-- fdo가 null이 아님을 먼저 확인 -->
				<% String dateValue = fdo.getDate() != null ? fdo.getDate() : ""; %>
				<input type="date" class="form-control" name="date" value="<%= dateValue %>">
			</div>
			
			
			<div class="mb-3">
				<label class="form-label">메모 🏷️</label> 
				<textarea class="form-control" name="memo" rows="5" placeholder="느낀 점 혹은 기대되는 점을 자유롭게 입력해 주세요. 👍 "><%= fdo.getMemo() %></textarea>
			</div>

			
			

		

			<button type="submit" class="btn btn-primary mb-3">Submit</button>
		</form>
	</div>

</body>
</html>