<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap4.0/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap4.0/sticky-footer-navbar.css">
	
	<c:set var="path" value="${pageContext.request.contextPath}"/>
</head>
<body>
	<header>
	    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	      <div class="container">
	        <a class="navbar-brand" href="${contextPath}/">Mediwave Diagnostics</a>
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarsExample07">
	          <ul class="navbar-nav mr-auto">
	            <li class="nav-item active">
	              <a class="nav-link" href="${contextPath}/">Home <span class="sr-only">(current)</span></a>
	            </li>
	            <li class="nav-item dropdown">
	              <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Patients</a>
	              <div class="dropdown-menu" aria-labelledby="dropdown07">
	                <a class="dropdown-item" href="${contextPath}/userRegistration">New Patient</a>
	                <a class="dropdown-item" href="${contextPath}/users/searchUserPage">Existing Patient</a>
	              </div>
	            </li>
	            <li class="nav-item dropdown">
	              <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Test Reports</a>
	              <div class="dropdown-menu" aria-labelledby="dropdown07">
	                <a class="dropdown-item" href="${contextPath}/users/searchUserPage">New Test Report</a>
	                <a class="dropdown-item" href="#">Search Test Report</a>
	              </div>
	            </li>
	            <li class="nav-item dropdown">
	              <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ReactJS</a>
	              <div class="dropdown-menu" aria-labelledby="dropdown07">
	                <a class="dropdown-item" href="${contextPath}/users/reactSample">sample</a>
	              </div>
	            </li>
	          </ul>
	          <form class="form-inline my-2 my-md-0">
	            <input class="form-control" type="text" placeholder="Search" aria-label="Search">
	          </form>
	          <a class="nav-link" href="${path}/">Logout<span class="sr-only">(current)</span></a>
	        </div>
	      </div>
	    </nav>
	</header>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/bootstrap4.0/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/bootstrap4.0/js/vendor/popper.min.js"></script>
    <script src="js/bootstrap4.0/bootstrap.min.js"></script>
</body>	
</html>