<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<body>
<%@ include file="Nav.jsp"%>
<div class="container" style="
	width:600px border: 1px solid #ccc; 
	border-radius:10px; 
	box-shadow:0 10px 20px rgba(0, 0, 0, 0.3); 
	padding: 20px;
	margin-top: 10%;">
	<p class="text-left fs-2 fw-bold">Login</p>
	<form action="LoginProc.jsp" method="get">
  <div class="mb-3">
    <label class="form-label">User ID</label>
    <input type="text" class="form-control" name="id" placeholder="eg. hong">
  </div>
  <div class="mb-3">
    <label  class="form-label">Mobile</label>
    <input type="password" class="form-control" name="mobile" placeholder="010-1111-2222">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

</body>
</html>