<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
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
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
	$(document).ready(function() {
		$( "#userName" ).autocomplete({
			/* source: '${pageContext. request. contextPath}/get_country_list.html' */
			source: ${users}
		});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12"><jsp:include page="header.jsp"></jsp:include></div>
		</div>
		<br/>
		<br/>
		<br/>
		<div class="row">
			<div class="col-md-3"> </div>
			<div class="col-md-6"> 
				<form:form action="${contextPath}/users/searchUser" method="POST" commandName="user">
					<h1>Search Patient</h1>
    				<div class="form-group" col-md-6>
						<input type="text" class="form-control" id="tags" name="userName" placeholder="Enter patient name" required>
					</div>
					<div class="form-group" col-md-6>
						<button type="submit" id="submit" name="submit" class="btn btn-primary pull-center">Search</button>
					</div>
				</form:form>
			</div>
			<div class="col-md-3"> </div>
		</div>
	</div>
	<div class="container">
		<c:choose>
			<c:when test="${mode == 'USER_VIEW' }">
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
								<td><a href="${contextPath}/users/retrieveUser?userId=${user.userName}"><div align="center" class="glyphicon glyphicon-edit"></div></a></td>
								<td><a href="${contextPath}/users/deleteUser?userId=${user.userName}"><div align="center" class="glyphicon glyphicon-trash"></div></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:when test="${mode == 'USER_EDIT' }">
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
			</c:when>
		</c:choose>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>