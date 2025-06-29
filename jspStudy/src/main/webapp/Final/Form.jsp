<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<!-- 부트스트랩 CSS 라이브러리 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- 부트스트랩 JS 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<jsp:include page="Nav.jsp"></jsp:include>
	<div class="container" style="
	width:600px border: 1px solid #ccc; 
	border-radius:10px; 
	box-shadow:0 10px 20px rgba(0, 0, 0, 0.3); 
	padding: 20px;
	margin-top: 10%;
	">
	<p class="fw-lighter fs-5 text-center mt-3"> ——  등록 ——  </p>
		<form action="FormProc.jsp" method="post">
			
			<div class="mb-3">
				<label class="form-label">나의 비일상 ✔️ </label>
				<select class="form-select" name="choice">
				<option value="movie" selected>영화</option>
				<option value="exhibition">전시</option>
				<option value="book">독서</option>
				<option value="concert">공연</option>
				<option value="etc">기타</option>
			</select>
			</div>
			
			<div class="mb-3">
				<label class="form-label">제목 🖋️ </label> 
				<input type="text" class="form-control" name="title">
			</div>
			
			<div class="mb-3">
				<label class="form-label">날짜: 📆 </label>
				<input type="date" class="form-control" name="date">
			</div>
			
			
			<div class="mb-3">
				<label class="form-label">메모 🏷️</label> 
				<textarea class="form-control" name="memo" rows="5" placeholder="느낀 점 혹은 기대되는 점을 자유롭게 입력해 주세요. 👍 "></textarea>
			</div>

			
			


		

			<button type="submit" class="btn btn-primary mb-3">Submit</button>
		</form>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>