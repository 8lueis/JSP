<%@page import="PreAddrDB.PreAddrDO"%>
<%@page import="java.util.ArrayList"%>
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
<jsp:useBean id="adao" class="PreAddrDB.PreAddrDAO" scope="application">

<%
	ArrayList<PreAddrDO> v = adao.getAllAddress();
%>

</jsp:useBean>



<div class="container" style="
	width:600px border: 1px solid #ccc; 
	border-radius:10px; 
	box-shadow:0 10px 20px rgba(0, 0, 0, 0.3); 
	padding: 20px;
	margin-top: 10%;
	">
	<p class="fw-bold fs-3 text-center"> —— 전체 주소록 —— </p>
	<hr>
	<button type="button" class="btn btn-outline-success" onclick="location.href='AddressForm.jsp'">새로운 주소 추가</button>
<table class="table table-hover align-middle">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Mobile</th>
      <th scope="col">Email</th>
      <th scope="col">Hobby</th>
    </tr>
  </thead>
  <tbody>
  <%
  	ArrayList<PreAddrDO> v = adao.getAllAddress();
  	for(int i=0; i<v.size(); i++){
  		PreAddrDO ado = v.get(i);
  %>
    <tr>
      <th scope="row"><td><%= i+1 %></td></th>
      <td scope="row"><%= ado.getName() %></td>
      <td><%= ado.getMobile() %></td>
      <td><%= ado.getEmail() %></td>
      <td><%= ado.getHobby() %></td>
      <td><button type="button" class="btn btn-primary" onclick="location.href='AddressModify.jsp?num=<%=ado.getNum()%>'">Modify</button>
      <button type="button" class="btn btn-danger" onclick="location.href='AddrBookDelete.jsp?num=<%=ado.getNum()%>'">Delete</button>
      </td>
    </tr>
 <% } %>
  </tbody>
</table>
</div>

</body>
</html>