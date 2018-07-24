<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html class="no-js">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body id="body">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form:form method="POST" commandName="values" action="${contextPath}/questionnair">
					<h4>Choose your favorite sports</h4>
					<div class="checkbox">
						<label><form:checkbox path="sports" value="Cricket"/>
							Cricket</label>
					</div>
					<div class="checkbox">
						<label><form:checkbox path="sports" value="Football"/>
						Football</label>
					</div>
					<div class="checkbox">
						<label><form:checkbox path="sports" value="Tennis"/>
							Tennis</label>
					</div>
					<hr>
					<h4>Choose your gender</h4>
					<div class="radio">
						<label><form:radiobutton path="gender" value="Male"/> Male</label>
					</div>
					<div class="radio">
						<label><form:radiobutton path="gender" value="Female"/> Female</label>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form:form>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
