<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.back-img {
	background: url("img/pen.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	width: 100%;
	height: 80vh;
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_components/alllinks.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	
	
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white">
				<i class="fa fa-book" aria-hidden="true"></i>E-Notes:Save Your Notes
			</h1>
			<a href="login.jsp" class="btn btn-light"> <i
				class="fa fa-user-circle-o" aria-hidden="true"></i>Login
			</a> <a href="register.jsp" class="btn btn-light"> <i
				class="fa fa-user-plus" aria-hidden="true"></i>Register
			</a>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>