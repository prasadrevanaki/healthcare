<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%-- <jsp:include page="header.jsp" /> --%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap4.0/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap4.0/sticky-footer-navbar.css">

<c:set var="path" value="${pageContext.request.contextPath}"/>
</head>

<body id="body">
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-3">1st Search</div>
			<div class="col-md-6">2st Search</div>
			<div class="col-md-3">3st Search</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/bootstrap4.0/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/bootstrap4.0/js/vendor/popper.min.js"></script>
    <script src="js/bootstrap4.0/bootstrap.min.js"></script>
</body>
</html>