<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>Money Manager</title>

		<!-- Bootstrap -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/vendors/bootstrap/dist/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/vendors/font-awesome/css/font-awesome.min.css">
		<!-- NProgress -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/vendors/nprogress/nprogress.css">
		<!-- Animate.css -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/vendors/animate.css/animate.min.css">

		<!-- Custom Theme Style -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/build/css/custom.min.css">
	

	</head>

	<body class="login">
		<div>
			<a class="hiddenanchor" id="signup"></a>
			<a class="hiddenanchor" id="signin"></a>

			<div class="login_wrapper">
				<div class="animate form login_form">
					<section class="login_content">
						<form:form action="login" method="POST" modelAttribute="loginModel">
							<h1>Login</h1>
							<div>
								<form:input path="username" cssClass="form-control" placeholder="Username" required="" onblur="callme();"></form:input>
							</div>
							<div>
								<form:password path="password" cssClass="form-control" placeholder="Password" required=""></form:password>
							</div>
							<div>
								<input type="submit" class="btn btn-default submit" value="Log in">
								<a class="reset_pass" href="#">Lost your password?</a>
							</div>

							<div class="clearfix"></div>

							<div class="separator">
								<p class="change_link">New to site?
									<a href="#signup" class="to_register"> Create Account </a>
								</p>

								<div class="clearfix"></div>
								<br />

								<div>
									<h1><i class="fa fa-paw"></i> Money Manager</h1>
									<p>Â©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
								</div>
							</div>
						</form:form>
					</section>
				</div>

				<div id="register" class="animate form registration_form">
					<section class="login_content">
						<form action="registration" method="post">
							<h1>Create Account</h1>

							<div>
								<input type="text" class="form-control" placeholder="Username" >
							</div>
							<div>
								<input type="email" class="form-control" placeholder="Email" >
							</div>
							<div>
								<input type="password" class="form-control" placeholder="Password" >
							</div>
							<div>								
								<input type="button" name="Submit" class="btn btn-default submit" value="Submit">
							</div>

							<div class="clearfix"></div>

							<div class="separator">
								<p class="change_link">Already a member ?
									<a href="#signin" class="to_register"> Log in </a>
								</p>

								<div class="clearfix"></div>
								<br />

								<div>
									<h1><i class="fa fa-paw"></i> Money Manager</h1>
									<p>Â©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
								</div>
							</div>
						</form>
					</section>
				</div>
			</div>
		</div>
	</body>
</html>