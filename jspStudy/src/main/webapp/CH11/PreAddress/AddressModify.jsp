
<%@page import="PreAddrDB.PreAddrDO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>

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
	<!-- num을 이용해 해당 DO 데이터 가져오기 -->
	<jsp:useBean id="adao" class="PreAddrDB.PreAddrDAO">
<%
	int num = Integer.parseInt(request.getParameter("num"));
	PreAddrDO ado = adao.getAddressOne(num);

	String[] hobbyName = {"tennis", "basketball", "swimming"};
	// 3개 값이라?
	Boolean[] checkFlag = new Boolean[3];
	// false로 한 번에 초기화 
	Arrays.fill(checkFlag, false);
	for(int i=0; i<hobbyName.length; i++){
		// hobbyName에 포함되어 있음 true로 설정 
		// -1: 포함되어 있지 않음 
		if(ado.getHobby().indexOf(hobbyName[i]) != -1){
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
	<p class="fx-bold fs-3 text-center" > —— 주소록 수정 —— </p>
<hr>
	
<!-- 수정 내용은 post 방식으로 전송 -->
<form action="AddressModifyProc.jsp" method="post">
			
			<input type="hidden" name="num" value="<%= ado.getNum() %>">


			<div class="mb-3">
				<label class="form-label">User Name 👽 </label> 
				<input type="text" class="form-control" name="name" 
				value="<%= ado.getName() %>">
			</div>
			
			<div class="mb-3">
				<label class="form-label"> Mobile 📞 </label>
				<input type="text" class="form-control" name="mobile" value="<%= ado.getMobile() %>">
			</div>
			
			
			<div class="mb-3">
				<label class="form-label">Email Address ✉️</label> 
				<input type="email" class="form-control" name="email" aria-describedby="emailHelp"
						value="<%= ado.getEmail() %>">
			</div>

			
			<!-- checkFlag를 사용해 selected 된 값이 제일 먼저 나오도록 설정 -->
			<div class="mb-3">
				<label class="form-label">Hobby 💭 </label>
				<select class="form-select" name="hobby">
				<option value="tennis" <%= checkFlag[0] ? "selected": "" %>>테니스</option>
				<option value="basketball" <%= checkFlag[1] ? "selected": "" %>>농구</option>
				<option value="swimming" <%= checkFlag[2] ? "selected": "" %>>수영</option>
			</select>
			</div>
			

			<button type="submit" class="btn btn-primary mb-3">Submit</button>
		</form>

</div>

</jsp:useBean>
</body>
</html>