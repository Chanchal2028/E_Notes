<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="all_components/alllinks.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-5x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>
					
					<%
					String regMsg=(String) session.getAttribute("reg-success");
					if(regMsg!=null){
				    %>
				    <div class="alert alert-success" role="alert"><%=regMsg%>login <a href="login.jsp">Click Here</a></div>
				    <% 
				    session.removeAttribute("reg-success");
					}
					%>
					
					
					<%
					String FailedMsg=(String) session.getAttribute("failed-msg");
					if(FailedMsg!=null){
				    %>
				    <div class="alert alert-danger" role="alert"><%=FailedMsg%></div>
				        
				    <% 
				    session.removeAttribute("failed-msg");
					}
					%>
					
					
					
					
					
					
					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">

							</div>
							<div class="form-group">
								<label>Enter E-mail</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>
							<br>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>