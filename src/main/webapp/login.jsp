<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="all_component/allCSS.jsp" %>
<title>Ebook: login</title>
</head>
<body style="background-color:#f7f7f7">
  <%@include file="all_component/navBar.jsp" %>
  <div class="container p-3">
  <div class="row">
   <div class="col-md-4 offset-md-4" >
    <div class="card">
     <div class="card-body">
      <h3 class="text-center">Login Page</h3>
      <form>
  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  <div><a href="register.jsp">Create Account</a></div>
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