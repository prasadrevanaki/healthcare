<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap4.0/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap4.0/sticky-footer-navbar.css">

<c:set var="path" value="${pageContext.request.contextPath}"/>
</head>

<body id="body">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
			<div class="jumbotron">
			  <h1 class="display-4">Mediwave Diagnostics</h1>
			  <p class="lead">Assuring quality health services to all the people we serve. Thousands of people are benefited so far !</p>
			  <hr class="my-4">
			  <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
			  <!-- <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a> -->
			</div>
			
			<div class="row">
				<div class="col-md-2"> </div>
				<div class="col-md-8"> 
					<form:form action="${contextPath}/users/searchByUserId" method="GET" commandName="user">
						<div class="row">
							<div class="col-md-10"> 
							<h2>Search Patient</h2>
							</div>
	 				  	</div>
	 				  	<div class="row">
		 					<div class="col-md-10"> 
		 						<div class="form-group"> <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter patient Id" required>
								</div>
		 					</div>
		 					<div class="col-md-2">
		 						<div class="form-group">
								<button type="submit" id="submit" name="submit" class="btn btn-primary pull-center">Search</button>
							</div>
							</div>
	 					</div>
					</form:form>
				</div>
				<div class="col-md-2"> </div>
			</div>
			<br/><br/><br/>
			<div class="row">
				<div class="col-md-2"> </div>
				<div class="col-md-8"> 
					<form:form action="${contextPath}/users/searchUser" method="GET" commandName="user">
						<div class="row">
							<div class="col-md-10"> 
							<h2>Search Report</h2>
							</div>
	 				  	</div>
	 				  	<div class="row">
		 					<div class="col-md-7"> 
		 						<div class="form-group"> <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter patient Id" required>
								</div>
		 					</div>
		 					<div class="col-md-3">
		 						<div class="form-group">
									<select class="form-control" id="stage" name="stage">
										<option value="level1">Level 1</option>
										<option value="level2">Level 2</option>
										<option value="level3">Level 3</option>
									</select>
								</div>
		 					</div>
		 					<div class="col-md-2">
		 						<div class="form-group">
								<button type="submit" id="submit" name="submit" class="btn btn-primary pull-center">Search</button>
							</div>
							</div>
	 					</div>
					</form:form>
				</div>
				<div class="col-md-2"> </div>
			</div>
		</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/bootstrap4.0/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/bootstrap4.0/js/vendor/popper.min.js"></script>
    <script src="js/bootstrap4.0/bootstrap.min.js"></script>
</body>
</html>