<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V8</title>
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
<body>

	<div class="container">
	<div class="row">
			<div class="col-md-12"><jsp:include page="loginHeader.jsp"></jsp:include></div>
		</div>
		<br/>
		<br/>
		<br/>
		<div class="row">
			<div class="col-md-3"> </div>
			<div class="col-md-6">
				<div class="card card-container">
	            <form class="form-signin" method="POST" action="${contextPath}/login">
	            	<div class="form-group">
							<label for="inputEmail">Email</label> <input name="username"
								type="text" class="form-control" placeholder="Username"
								autofocus="true" />
						</div>
						<div class="form-group">
							<label for="inputPassword">Password</label> <input name="password"
								type="password" class="form-control" placeholder="Password" />
						</div>
						
	                <!-- <span id="reauth-email" class="reauth-email"></span>
	                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
	                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
	                <div id="remember" class="checkbox">
	                    <label>
	                        <input type="checkbox" value="remember-me"> Remember me
	                    </label>
	                </div> -->
	                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
	            </form><!-- /form -->
        	</div><!-- /card-container --> 
			</div>
			<div class="col-md-3"></div>
	</div>
    </div><!-- /container -->
</body>
</html>