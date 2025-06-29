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
<%
String currentPage = request.getRequestURI();
boolean isMain = currentPage.contains("Main.jsp");
%>
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
  	<div style="margin: 10px 0 30px 10px">
	  	<a class="fs-6 navbar-brand" href="Main.jsp">비일상; 非日常</a>
	    <div style="font-size: 0.75rem;">
			<%= isMain ? "문화 생활 기록지" : "문화 생활 안내지" %>
		</div>
  	</div>
    
     
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        
        <li class="nav-item" style="margin-left: 10px">
          <a class="nav-link" href="Announce.jsp" style="font-size: 0.75rem; ">안내지</a>
        </li>
        


        
      </ul>

    </div>
    
  </div>
  
</nav>


</body>
</html>