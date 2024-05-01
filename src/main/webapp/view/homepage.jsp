<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>C Assure</title>
<style>
@import "compass/css3";

* {
margin: 0;
padding: 0;
}

body {
  font-family: Sans-serif;
  background: "<c:url value="/resources/images/health.png"/>";
}

#wrap {
  margin: 0 auto 850px;
  
}

#regbar {
    height: 67px;
    background: #6caff1;
    
  }

#navthing {
    position: fixed;
    margin-left: 1250px;
}

#head{
    position: fixed;
    padding-top: 10px;
    padding-left: 10px;
    float: left;
    font-family: kavoon;
    font-weight: bolder;
    color: blue;
}

h2 {
  padding: 20px;
  color: #ecf0f1;
}

.text{
    position: absolute;
    padding-top: 100px;
    padding-left:100px;
    float: left;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    font-weight:900;
    font-style: italic;
    color:grey;
}


fieldset {
border: none;
}


</style>
</head>
<body>
<div id="wrap">
    <div id="head"><h1>Health-E Home Page</h1></div>
  <div id="regbar">
    <div id="navthing">
      <h2><a href="loginpage">Login</a> | <a href="register">Register</a></h2></div>
      <div class="text"><h1>We are there <br>
          when you need as the most</h1></div>
      <img alt="img" src="<c:url value="/resources/images/health.png"/>">
  </div>
</div>
</body>
</html>