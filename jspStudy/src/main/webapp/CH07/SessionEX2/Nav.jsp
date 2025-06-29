<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Nav</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
  <!-- 250325 부트스트랩 실습 -->
    <a class="navbar-brand" href="#">
    <image src="./images/icon.png" alt="flaticon 로고" width="30" class="d-inline-block align-text-top">
    Software
    </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      <!-- <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
      
     
    
    
<%

	// logout 변수를 체크해서 로그아웃 버튼이 클릭 됐다ㅕㅁㄴ 세선 ID 정보 삭제 --> 버튼 이름도 수정 
	// 로그인 버튼이 클릭 됐다면 세션의 ID 정보를 읽어서 표시
	String logout = request.getParameter("logout");
	if(logout != null){
		session.setAttribute("id", null);
		session.setMaxInactiveInterval(0);
	}

	String id = (String)session.getAttribute("id");
	// id가 null이면 로그아웃 상태
	// logout 변수를 이용해 전달되는 값이 있는지 확인 (있다면 세션 정보 삭제)
	if(id == null){	
%>
		 로그인 <button class="btn btn-outline-success" type="button" onclick="location.href='Login.jsp'" style="margin-left: 20px">로그인</button>
<% 
	}else{
%>
 	<%= id %>님 <button class="btn btn-outline-success" onclick="location.href='Main.jsp?logout=1'" style="margin-left: 20px">로그아웃</button>
<%		
	}
%>

    </div>
  </div>
</nav>
</body>
</html>