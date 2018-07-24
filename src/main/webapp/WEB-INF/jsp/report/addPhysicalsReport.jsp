<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap4.0/sticky-footer-navbar.css">
<c:set var="path" value="${pageContext.request.contextPath}"/>
</head>

<body>
	<div class="col-md-12"><jsp:include page="../header.jsp"></jsp:include></div>
	<div class="container">
		<br /> <br /> <br />
		<c:choose>
			<c:when test="${mode == 'REPORT_WRITE' }">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<form:form action="${contextPath}/reports/savePhysicals" method="POST" commandName="physicals" id="physicalsWrite">
							<table class="table table-striped">
								<thead>
									<tr><h3>Add Physicals Report</h3></tr><br/>
									<tr><h4><b>Username : <c:out value="${userName}"/></b></h4></tr><br/><br/>
									<tr>
										<td><div class="form-group"><label>Test Name</label></div></td>
										<td><div class="form-group"><label>Result</label></div></td>
										<td><div class="form-group"><label>Unit</label></div></td>
										<td><div class="form-group"><label>Range</label></div></td>
									</tr>
								</thead>
								<tbody>
									<form:hidden path="userName" id="userName" value="${userName}"/>
									<!-- height -->
									<tr>
										<td><c:out value="${physicals.height}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="height_result" name="height_result" size="10" placeholder="Result" width="10" required>
											</div>								
										</td>
										<td><c:out value="${physicals.height_unit}" /></td>
										<td></td>
									</tr>
									<!-- wieght -->
									<tr>
										<td><c:out value="${physicals.weight}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="weight_result" name="weight_result" size="10" placeholder="Result" width="10" required>
											</div>								
										</td>
										<td><c:out value="${physicals.weight_unit}" /></td>
										<td></td>
									</tr>
									<!-- waist -->
									<tr>
										<td><c:out value="${physicals.waist}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="waist_result" name="waist_result" size="10" placeholder="Result" width="10" required>
											</div>								
										</td>
										<td><c:out value="${physicals.waist_unit}" /></td>
										<td></td>
									</tr>
									<!-- pulse -->
									<tr>
										<td><c:out value="${physicals.pulse}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="pulse_result" name="pulse_result" size="10" placeholder="Result" width="10" required>
											</div>								
										</td>
										<td><c:out value="${physicals.pulse_unit}" /></td>
										<td><c:out value="${physicals.pulse_range}" /></td>
									</tr>
									<!-- bp-systolic -->
									<tr>
										<td><c:out value="${physicals.bp_systolic}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="bp_systolic_result" name="bp_systolic_result" size="10" placeholder="Result" width="10" required>
											</div>								
										</td>
										<td><c:out value="${physicals.bp_systolic_unit}" /></td>
										<td><c:out value="${physicals.bp_systolic_range}" /></td>
									</tr>
									<!-- bp_dystolic -->
									<tr>
										<td><c:out value="${physicals.bp_dystolic}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="pulse_result_result" name="bp_dystolic_result" size="10" placeholder="Result" width="10" required>
											</div>								
										</td>
										<td><c:out value="${physicals.bp_dystolic_unit}" /></td>
										<td><c:out value="${physicals.bp_dystolic_range}" /></td>
									</tr>
									<!-- bmi -->
									<tr>
										<td><c:out value="${physicals.bmi}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="bmi_result" name="bmi_result" size="10" placeholder="Result" width="10" required>
											</div>								
										</td>
										<td><c:out value="${physicals.bmi_unit}" /></td>
										<td><c:out value="${physicals.bmi_range}" /></td>
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
					<div class="col-md-3">
					</div>
			</c:when>
			
			<c:when test="${mode == 'REPORT_UPDATE' }">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<form:form action="${contextPath}/reports/updatePhysicals" method="POST" commandName="physicals" id="physicalsWrite">
							<table class="table table-striped">
								<thead>
									<tr><h3>Update Physicals Report</h3></tr><br/>
									<tr><h4><b>Username : <c:out value="${physicals.userName}"/></b></h4></tr><br/><br/>
									<tr>
										<td><div class="form-group"><label>Test Name</label></div></td>
										<td><div class="form-group"><label>Result</label></div></td>
										<td><div class="form-group"><label>Unit</label></div></td>
										<td><div class="form-group"><label>Range</label></div></td>
									</tr>
								</thead>
								<tbody>
									<form:hidden path="userName" id="userName" value="${userName}"/>
									<!-- height -->
									<tr>
										<td><c:out value="${physicals.height}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="height_result" name="height_result" value="${physicals.height_result}" required>
											</div>								
										</td>
										<td><c:out value="${physicals.height_unit}" /></td>
										<td></td>
									</tr>
									<!-- wieght -->
									<tr>
										<td><c:out value="${physicals.weight}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="weight_result" name="weight_result" value="${physicals.weight_result}" required>
											</div>								
										</td>
										<td><c:out value="${physicals.weight_unit}" /></td>
										<td></td>
									</tr>
									<!-- waist -->
									<tr>
										<td><c:out value="${physicals.waist}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="waist_result" name="waist_result" value="${physicals.waist_result}" required>
											</div>								
										</td>
										<td><c:out value="${physicals.waist_unit}" /></td>
										<td></td>
									</tr>
									<!-- pulse -->
									<tr>
										<td><c:out value="${physicals.pulse}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="pulse_result" name="pulse_result" value="${physicals.pulse_result}" required>
											</div>								
										</td>
										<td><c:out value="${physicals.pulse_unit}" /></td>
										<td><c:out value="${physicals.pulse_range}" /></td>
									</tr>
									<!-- bp-systolic -->
									<tr>
										<td><c:out value="${physicals.bp_systolic}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="bp_systolic_result" name="bp_systolic_result" value="${physicals.bp_systolic_result}" required>
											</div>								
										</td>
										<td><c:out value="${physicals.bp_systolic_unit}" /></td>
										<td><c:out value="${physicals.bp_systolic_range}" /></td>
									</tr>
									<!-- bp_dystolic -->
									<tr>
										<td><c:out value="${physicals.bp_dystolic}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="pulse_result_result" name="bp_dystolic_result" value="${physicals.bp_dystolic_result}" required>
											</div>								
										</td>
										<td><c:out value="${physicals.bp_dystolic_unit}" /></td>
										<td><c:out value="${physicals.bp_dystolic_range}" /></td>
									</tr>
									<!-- bmi -->
									<tr>
										<td><c:out value="${physicals.bmi}"/></td>
										<td>
											<div class="form-group">
											<input type="text" class="form-control" id="bmi_result" name="bmi_result" value="${physicals.bmi_result}" required>
											</div>								
										</td>
										<td><c:out value="${physicals.bmi_unit}" /></td>
										<td><c:out value="${physicals.bmi_range}" /></td>
									</tr>
								</tbody>
							</table>
							<div class="continaer">
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-3">
										<div class="form-group">
											<button type="submit" id="submit" name="submit"	class="btn btn-info">Update</button>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<button type="button" onclick="resetFields"	value="Clear" class="btn btn-info">Clear</button>
										</div>							
									</div>
									<div class="col-md-2">
										<div class="form-group">
										<a href="${contextPath}/reports/deleteReport?userName=${physicals.userName}" class="btn btn-info" role="button">Delete</a>
										</div>
									</div>							
									</div>
									<div class="col-md-2"></div>
								</div>
								</form:form>
							</div>
					</div>
					<div class="col-md-3">
					</div>
			</c:when>
			
			<c:when test="${mode == 'REPORT_READ' }">
				<c:if test="${userAction == 'CREATE' }">
					<div class="alert alert-success"> <strong>Success!</strong> Report has been created successfully !.	</div>
				</c:if>
				<c:if test="${userAction == 'UPDATE' }">
					<div class="alert alert-success"> <strong>Success!</strong> Report has been updated successfully !.	</div>
				</c:if>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<form:form>
							<table class="table table-striped">
								<thead>
									<tr><h3>Physicals Report</h3></tr><br/>
									<tr><h4><b>Username : <c:out value="${physicals.userName}"/></b></h4></tr><br/><br/>
									<tr>
										<td><div class="form-group"><label>Test Name</label></div></td>
										<td><div class="form-group"><label>Result</label></div></td>
										<td><div class="form-group"><label>Unit</label></div></td>
										<td><div class="form-group"><label>Range</label></div></td>
									</tr>
								</thead>
								<tbody>
									<!-- height -->
									<tr>
										<td><c:out value="${physicals.userName}"/></td>
										<td><c:out value="${physicals.height_result}"/></td>
										<td><c:out value="${physicals.height_unit}" /></td>
										<td><c:out value="${physicals.height_range}" /></td>
									</tr>
									<!-- wieght -->
									<tr>
										<td><c:out value="${physicals.weight}"/></td>
										<td><c:out value="${physicals.weight_result}"/></td>
										<td><c:out value="${physicals.weight_unit}" /></td>
										<td><c:out value="${physicals.waist_range}" /></td>
									</tr>
									<!-- waist -->
									<tr>
										<td><c:out value="${physicals.waist}"/></td>
										<td><c:out value="${physicals.waist_result}"/></td>
										<td><c:out value="${physicals.waist_unit}" /></td>
										<td><c:out value="${physicals.waist_range}" /></td>
									</tr>
									<!-- pulse -->
									<tr>
										<td><c:out value="${physicals.pulse}"/></td>
										<td><c:out value="${physicals.pulse_result}"/></td>
										<td><c:out value="${physicals.pulse_unit}" /></td>
										<td><c:out value="${physicals.pulse_range}" /></td>
									</tr>
									<!-- bp-systolic -->
									<tr>
										<td><c:out value="${physicals.bp_systolic}"/></td>
										<td><c:out value="${physicals.bp_systolic_result}"/></td>
										<td><c:out value="${physicals.bp_systolic_unit}" /></td>
										<td><c:out value="${physicals.bp_systolic_range}" /></td>
									</tr>
									<!-- bp_dystolic -->
									<tr>
										<td><c:out value="${physicals.bp_dystolic}"/></td>
										<td><c:out value="${physicals.bp_dystolic_result}"/></td>
										<td><c:out value="${physicals.bp_dystolic_unit}" /></td>
										<td><c:out value="${physicals.bp_dystolic_range}" /></td>
									</tr>
									<!-- bmi -->
									<tr>
										<td><c:out value="${physicals.bmi}"/></td>
										<td><c:out value="${physicals.bmi_result}"/></td>
										<td><c:out value="${physicals.bmi_unit}" /></td>
										<td><c:out value="${physicals.bmi_range}" /></td>
									</tr>
								</tbody>
							</table>
							<div class="continaer">
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-3">
										<div class="form-group">
											<a href="${contextPath}/reports/retrieveReport?userName=${physicals.userName}" class="btn btn-info" role="button">Update</a>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<a href="${contextPath}/reports/deleteReport?userName=${physicals.userName}" class="btn btn-info" role="button">Delete</a>
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
					<div class="col-md-3">
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
