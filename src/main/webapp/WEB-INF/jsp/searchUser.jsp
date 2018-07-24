<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/bootstrap4.0/sticky-footer-navbar.css">
	
	<script src="https://fb.me/react-0.14.3.min.js"></script>
	<script src="https://fb.me/react-dom-0.14.3.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.24/browser.min.js"></script>
	
	<link rel="stylesheet" href="css/bootstrap4.0/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap4.0/sticky-footer-navbar.css">
	</head>
	<body>
			<div class="col-md-12"><jsp:include page="header.jsp"></jsp:include></div>
		<div class="container">
			<br/>
			<br/>
			<br/>
			<div class="row">
				<div class="col-md-2"> </div>
				<div class="col-md-8"> 
					<form:form action="${contextPath}/users/searchUser" method="GET" commandName="user">
						<div class="row">
							<div class="col-md-10"> 
							<h2>Search Patient</h2>
							</div>
	 				  	</div>
	 					<div class="row">
	 						<div class="col-md-10"> 
		 						<div class="form-group"> <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter patient name" required>
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
		<div class="container">
			<c:choose>
				<c:when test="${mode == 'USER_VIEW' }">
					<div class="container">
						<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-8">
								<table class="table table-striped">
									<thead>
										<tr>
											<th align="center">User Name</th>
											<th align="center">Mobile Number</th>
											<th align="center">User Email</th>
											<th align="center">Update</th>
											<th align="center">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${users}" var="user">
											<tr>
												<td><c:out value="${user.userName}" /></td>
												<td><c:out value="${user.mobileNumber}" /></td>
												<td><c:out value="${user.email}" /></td>
												<td><a href="${contextPath}/users/retrieveUser?userName=${user.userName}">Edit</div></a></td>
												<td><a href="${contextPath}/users/deleteUser?userName=${user.userName}">Delete</div></a></td>
												<%-- <td><a href="${contextPath}/users/retrieveUser?userName=${user.userName}"><div align="center" class="glyphicon glyphicon-edit"></div></a></td>
												<td><a href="${contextPath}/users/deleteUser?userName=${user.userName}"><div align="center" class="glyphicon glyphicon-trash"></div></a></td> --%>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="col-md-2"></div>
						</div>
					</div>
				</c:when>
				<c:when test="${mode == 'USER_EDIT' }">
					<div class="container">
						<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-8">
								<form:form action="${contextPath}/users/updateUser" method="POST" commandName="updateUser">
								<div class="form-group">
									<label for="userName">User Name</label>
									<input type="text" class="form-control" id="userName" name="userName" value="${user.userName}">
								</div>
								<div class="form-group">
									<label for="userName">Email</label>
									<input type="text" class="form-control" id="email" name="email" value="${user.email}">
								</div>
								<div class="form-group">
									<label for="userName">Mobile Number</label>
									<input type="text" class="form-control" id="mobileNumber" name="mobileNumber" value="${user.mobileNumber}">
								</div>
								<button type="submit" id="submit" name="submit" class="btn btn-primary pull-center">Update</button>
					</form:form>						
							</div>
							<div class="col-md-2"></div>
						</div>
					</div>
				</c:when>
			</c:choose>
		</div>
		<!-- ReactJS -->
		<div class="container" id="container">
			
		</div>
		<script type="text/babel">
			ReactDOM.render(<h2>Bucky</h2>, document.getElementById('container'));
		</script>
		<footer class="footer">
	      <div class="container">
	        <span class="text-muted"> Mediwave Diagnostics &reg; &copy;  2018-2019 </span>
	      </div>
	    </footer>
		
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script>window.jQuery || document.write('<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"><\/script>')</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	</body>
</html>