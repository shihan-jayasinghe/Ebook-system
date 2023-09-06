<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="all_component/allCSS.jsp" %>
<title>Ebook: Register</title>
</head>
<body style="background-color:#f7f7f7">
 <%@include file="all_component/navBar.jsp" %>
 <div class="container p-3">
  <div class="row">
   <div class="col-md-4 offset-md-4" >
    <div class="card">
     <div class="card-body">
      <h3 class="text-center">Registration Page</h3>
      <form action="register" method="post">
  <div class="mb-3">
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Enter Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">
  </div>
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Phone Number</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="pho">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
    <label class="form-check-label" for="exampleCheck1">Agree terms & conditions</label>
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
    </div>
    </div>
  </div>
 </div>
 </div>
 <%@include file="all_component/footer.jsp" %>
</body>
</html>