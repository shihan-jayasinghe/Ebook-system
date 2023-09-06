<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Index</title>
<%@ include file="all_component/allCSS.jsp" %>

<style type="text/css">
 .back-img{
   background:url("img/background.jpg");
   height:50vh;
   width:100%;
   background-repeat:no-repeat;
 }
</style>

</head>
<body>
  <%@include file="all_component/navBar.jsp" %>
  <div class="container-fluid back-img">
    <h1 class="text-center text-white "><i class="fa-solid fa-book"></i> Ebook Management System</h1>
  </div>
  <div class="container">
   <h3 class="text-center">React Book</h3>
   <div class="row">
    <div class="col-md-3">
     <div class="card">
      <div class="card-body text-center">
      <img alt="" src="book/a.jpg" style="width:150px; height:200px" class="img-thumblin">
      <p>C programming</p>
      <p>will norton</p>
     </div>
     </div>
    </div>
   </div>
  </div>
</body>
</html>