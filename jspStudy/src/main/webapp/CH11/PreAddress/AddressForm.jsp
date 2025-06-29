<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 CSS 라이브러리 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- 부트스트랩 JS 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container" style="
	width:600px border: 1px solid #ccc; 
	border-radius:10px; 
	box-shadow:0 10px 20px rgba(0, 0, 0, 0.3); 
	padding: 20px;
	margin-top: 10%;
	">
	<p class="fw-lighter fs-3 text-center mt-3"> ——  주소록 등록 ——  </p>
		<form action="AddressProc.jsp" method="get">
			
			
			<div class="mb-3">
				<label class="form-label">User Name 👽 </label> 
				<input type="text" class="form-control" name="name">
			</div>
			
			<div class="mb-3">
				<label class="form-label">Mobile 📞 </label>
				<input type="text" class="form-control" name="mobile">
			</div>
			
			
			<div class="mb-3">
				<label class="form-label">Email Address ✉️</label> 
				<input type="email" class="form-control" name="email" aria-describedby="emailHelp">
			</div>

			
			<div class="mb-3">
				<label class="form-label">Hobby 💭 </label>
				<select class="form-select" name="hobby">
				<option value="tennis" selected>테니스</option>
				<option value="basketball">농구</option>
				<option value="swimming">수영</option>
			</select>
			</div>


		

			<button type="submit" class="btn btn-primary mb-3">Submit</button>
		</form>
	</div>
</body>
</html>