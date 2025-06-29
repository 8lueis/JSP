<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비일상: 안내지</title>
<style>
  .carousel-item {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #ffffff; 
  }

  .carousel-item img {
    max-height: 90vh;
    height: auto;
    width: auto;
    object-fit: contain;
  }

a.white-no-underline {
  text-decoration: none;   
  color: white;}

a.white-no-underline:hover {
  color: white;            
  text-decoration: none;   
}

</style>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<jsp:include page="Nav.jsp"></jsp:include>

<div class="container">
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./img/firewatching.png" class="d-block w-100" alt="불구경" >
      <div class="carousel-caption d-none d-md-block">
        <h5><a href="https://tickets.interpark.com/goods/L0000121" class="white-no-underline">쏜애플 콘서트 '불구경'</a></h5>
        <p>LG아트센터 서울 U+ 스테이지</p>
        </div>
    </div>
    
    <div class="carousel-item">
      <img src="./img/pentaport.png" class="d-block w-100" alt="펜타포트">
      <div class="carousel-caption d-none d-md-block">
       <h5><a href="https://tickets.interpark.com/goods/25004977" class="white-no-underline">2025 인천펜타포트 락 페스티벌</a></h5>
        <p>송도달빛축제공원</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="./img/soundberry.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5><a href="https://tickets.interpark.com/goods/25006146"  class="white-no-underline">SOUNDBERRY FESTA'25</a></h5>
        <p>일산 킨텍스 제2전시장 9홀</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">공연명</th>
      <th scope="col">장소</th>
      <th scope="col">일정</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>쏜애플 콘서트 '불구경'</td>
      <td>LG아트센터 서울 U+ 스테이지</td>
      <td>2025.06.20 ~ 2025.06.29</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>2025 인천펜타포트 락 페스티벌</td>
      <td>송도달빛축제공원</td>
      <td>2025.08.01 ~ 2025.08.03</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>SOUNDBERRY FESTA'25</td>
      <td>일산 킨텍스 제2전시장 9홀</td>
      <td>2025.07.19 ~ 2025.07.20</td>
    </tr>
  </tbody>
</table>




</div>

<jsp:include page="Footer.jsp"></jsp:include>>
</body>
</html>