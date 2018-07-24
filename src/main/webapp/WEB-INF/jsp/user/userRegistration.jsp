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
<script type="text/javascript">
$(function() {
    $('input[name="dob"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    }, 
    function(start, end, label) {
        var years = moment().diff(start, 'years');
        alert("You are " + years + " years old.");
    });
});
</script>
<script type="text/javascript">
function myFunction() {
    document.getElementById("userWrite").reset();
}
</script>
<c:set var="path" value="${pageContext.request.contextPath}"/>
</head>
<body>
	<div class="col-md-12"><jsp:include page="../header.jsp"></jsp:include></div>
	<div class="container">
		<br /> <br /> <br />
		<c:choose>
			<c:when test="${mode == 'USER_WRITE' }">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<form:form action="${contextPath}/users/registerUser" method="POST"	commandName="user" id="userWrite">
							<table class="table table-striped">
								<thead>
									<tr><h3>Add New User</h3></tr>
								</thead>
								<tbody>
									<tr>
										<td>User Name : </td>
										<td> <input type="text" class="form-control" id="userName" name="userName" placeholder="Username"> </td>
										<td>Stage</td>
										<td><select class="form-control" id="stage" name="stage">
												<option>BASELINE</option>
												<option>HEART</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>Email : </td>
										<td> <input type="text" class="form-control" id="email" name="email"	placeholder="Email" required> </td>
										<td>Mobile Number :</td>
										<td><input type="text" class="form-control" id="mobileNumber" name="mobileNumber"	placeholder="Mobile Number" required></td>
									</tr>
									<tr>
										<td>Date of Birth :</td>
										<td><input type="text" class="form-control" id="dob" name="dob" placeholder="Date of Birth" required></td>
										<td>Age :</td>
										<td><input type="text" class="form-control" id="age" name="age" placeholder="Age" required></td>
									</tr>
								</tbody>
							</table>
							<div class="continaer">
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-3">
										<div class="form-group">
											<button type="submit" id="submit" name="submit"	class="btn btn-primary pull-center">Submit</button>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<button type="button" onclick="resetFields"	value="Clear" class="btn btn-primary pull-center">Clear</button>
										</div>							
									</div>
									<div class="col-md-2">
										</div>							
									</div>
									<div class="col-md-2"></div>
								</div>
								</form:form>
							</div>
					</div>
					<div class="col-md-2">
					</div>
			</c:when>
			
			<c:when test="${mode == 'USER_READ' }">
				<div class="row">
					<div class="col-md-2"></div>
					<c:if test="${userFound=='FOUND'}">
						<div class="col-md-8">
							<div class="alert alert-success" role="alert"> User found !	</div>
						</div>
					</c:if>
					<c:if test="${userCreated=='TRUE'}">
						<div class="col-md-8">
							<div class="alert alert-success" role="alert"> User has been created successfully !	</div>
						</div>
					</c:if>
					<div class="col-md-2"></div>
				</div>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<form:form>
							<table class="table table-striped">
								<thead>
									<tr><h3>User Details</h3></tr>
								</thead>
								<tbody>
									<tr>
										<td>User ID :	</td>
										<td> <c:out value="${user.userId}"/> </td>
									</tr>
									<tr>
										<td>User Name :	</td>
										<td> <c:out value="${user.userName}"/> </td>
										<td>Stage : </td>									
										<td> <c:out value="${user.stage}"/>	</td>
									</tr>
									<tr>
										<td>Email :	</td>
										<td> <c:out	value="${user.email}"/> </td>
										<td>Mobile Number : </td>									
										<td> <c:out value="${user.mobileNumber}"/>	</td>
									</tr>
									<tr>
										<td>Date of Birth :</td>
										<td><c:out value="${user.dob}"/></td>
										<td>Age : </td>
										<td><c:out value="${user.age}"/></td>
									</tr>
								</tbody>
							</table>
							<div class="continaer">
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-3">
										<div class="form-group">
											<a href="${contextPath}/users/retrieveUser?userId=${user.userId}" class="btn btn-info" role="button">Update</a>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<a href="${contextPath}/users/deleteUser?userName=${user.userName}" class="btn btn-info" role="button">Delete</a>
										</div>							
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<%-- <a href="${contextPath}/users/searchUser?userName=${user.userName}" class="btn btn-info" role="button">Add Physicals</a> --%>
											<a href="${contextPath}/reports/addPhysicals?userName=${user.userName}" class="btn btn-info" role="button">Add Physicals</a>
										</div>
									</div>
									<div class="col-md-2"></div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
				<div class="col-md-2"></div>
			</c:when>
			
			<c:when test="${mode == 'USER_UPDATE' }">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<form:form action="${contextPath}/users/updateUser" method="POST" commandName="user">
							<table class="table table-striped">
								<thead>
									<tr><h3>Update User</h3></tr>
								</thead>
								<tbody>
									<tr>
										<td>User Name :</td>
										<td><input type="text" class="form-control" id="userName" name="userName" value="${user.userName}"></td>
										<td>Stage :</td>
										<td>
											<select class="form-control" id="stage" name="stage">
												<option value="${user.stage}"><c:out value="${user.stage}"/></option>
												<option>BASELINE</option>
												<option>HEART</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>Email :</td>
										<td> <input type="text" class="form-control" id="email" name="email"	value="${user.email}"></td>
										<td>Mobile Number :</td>
										<td><input type="text" class="form-control" id="mobileNumber" name="mobileNumber" value="${user.mobileNumber}"></td>
									</tr>
									<tr>
										<td>Date of Birth :</td>
										<td> <input type="text" class="form-control" id="dob" name="dob" value="${user.dob}"></td>
										<td>Age :</td>
										<td><input type="text" class="form-control" id="age" name="age" value="${user.age}"></td>
									</tr>
								</tbody>
							</table>
							<div class="continaer">
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-3">
										<div class="form-group">
											<button type="submit" id="submit" name="submit"	class="btn btn-primary pull-center">Update</button>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<a href="${contextPath}/users/deleteUser?userId=${user.userName}" class="btn btn-info" role="button">Delete</a>
										</div>							
									</div>
									<div class="col-md-2">
										</div>							
									</div>
									<div class="col-md-2"></div>
								</div>
								</form:form>
							</div>
					</div>
					<div class="col-md-2">
					</div>
			</c:when>
		</c:choose>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script>window.jQuery || document.write('<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"><\/script>')</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>
