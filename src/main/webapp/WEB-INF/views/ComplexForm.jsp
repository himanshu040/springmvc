
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Complex Form</title>
  </head>
  <body class="" style="background:#e2e2e2">

  <div class="container mt-5">
    <div class="row">
      <div class="col-md-6 offset-md-3">
       <div class="card">
       <div class="card-body">
       <h3 class="text-center" >Complex Form </h3>
       <div class="alert alert-danger" role="alert">
  <form:errors path="student.*"></form:errors>
</div>
       <form action="handleform" method="post">
       <div class="form-group">
       <label for="exampleInputName">
       Your Name
       </label>
       <input
         name="name" type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeHolder="Enter Name">
         <small
         id="emailHelp" class="form-text text-muted">
         We will never share your name with anyone
         </small>
       </div>
       
       
        <div class="form-group">
       <label for="exampleInputEmail">
       Your id
       </label>
       <input
         name="id" type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeHolder="Enter ID">
       </div>
       
        <div class="form-group">
       <label for="exampleInputEmail">
       Your DOB
       </label>
       <input
         name="dob" type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeHolder="dd/mm/yyyy">
       </div>
       
        <div class="form-group">
       <label for="exampleFormControlSelect1">
       Select Courses
       </label>
       <select name="courses" class="form-control" id="exampleFormControlSelect1" multiple>
       <option value="java">Java</option>
       <option value="python">Python</option>
       <option value="C++">C++</option>
       <option value="django">Django</option>
       <option value="SpringFramework">Spring Framework</option>
       </select>
       </div>
       
        <div class="form-group">
      <span class="mr-3"> Select Gender</span>
      <div class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gender" id="inlineRadio1"value="male">
      <label class="form-check-label" for="inlineRadio1"> Male</label>
      </div>
      <div class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="female">
      <label class="form-check-label" for="inlineRadio1" > Female</label>
      </div>
       </div>
       
      <div class="form-group">
       <label for="">
       Select type
       </label>
       <select name="type" class="form-control" >
       <option value="old">Old Student</option>
       <option value="normal">Normal Student</option>
       </select>
       </div>
       
       <div class="card">
        <div class="card-body">
         <p> Your Address </p>
            <div class="form-group">
       <label for="exampleInputEmail">
       Street
       </label>
       <input
         name="address.street" type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeHolder="Enter Street">
       </div>
       
        <div class="form-group">
       <label for="exampleInputEmail">
       City
       </label>
       <input
         name="address.city" type="text" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeHolder="Enter City">
       </div>
       
        </div>
       
       
      </div>
       
       <div class="container text-center">
         <button type="submit" class="btn btn-primary"> Submit</button>
       
       </div>
       
       
       </form>
       </div>
       </div>
      </div>
    
    
    </div>
  </div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>