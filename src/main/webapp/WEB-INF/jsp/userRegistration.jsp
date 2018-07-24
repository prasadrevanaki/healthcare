<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="path" value="${pageContext.request.contextPath}"/>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12"><jsp:include page="header.jsp"></jsp:include></div>
		</div>
		<br /> <br /> <br />
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form:form action="${contextPath}/users/registerUser" method="POST"	commandName="user">
					<h1>Register New User</h1>
					<div class="form-group" col-md-6>
						<input type="text" class="form-control" id="userName" name="userName" placeholder="Full name" required>
					</div>
					<div class="form-group" col-md-6>
						<input type="text" class="form-control" id="email" name="email"	placeholder="Email" required>
					</div>
					<div class="form-group" col-md-6>
						<input type="text" class="form-control" id="mobileNumber" name="mobileNumber" placeholder="Mobile Number" required>
					</div>
					<hr />
					<button type="submit" id="submit" name="submit"	class="btn btn-primary pull-center">Submit</button>
				</form:form>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
