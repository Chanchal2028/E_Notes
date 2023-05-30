<%@page import="com.User.UserDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Navbar Color Schemes</title>
</head>
<body>
	<div>
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
			<div class="container-fluid">
				<a href="index.jsp" class="navbar-brand" data-toggle="modal"
					data-target="#exampleModal"><i class="fa-solid fa-book"></i>
					ENotes</a>
				<button type="button" class="navbar-toggler"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse1">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse1">
					<div class="navbar-nav">
						<a href="home.jsp" class="nav-item nav-link active"><i
							class="fa-solid fa-house"></i> Home</a> <a href="addNotes.jsp"
							class="nav-item nav-link"><i class="fa-solid fa-plus"></i>
							Add Notes</a> <a href="showNotes.jsp" class="nav-item nav-link"><i
							class="fa-solid fa-address-book"></i> Show Notes</a>
					</div>
					<form class="d-flex ms-auto">
						<%
						UserDetails user = (UserDetails) session.getAttribute("userD");

						if (user != null) {
						%>
						<a href="" class="btn btn-light m-2" data-bs-toggle="modal"
							data-bs-target="#exampleModal" type="submit"><i class="fa-regularfa-user">
							</i> <%=user.getName()%></a> <a href="LogoutServlet" type="submit"
							class="btn btn-light m-2"><i
							class="fa-solid fa-right-from-bracket"></i> Logout</a>



						<!-- Button trigger modal -->







						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Modal
											title</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="container text-center">
											<i class="fa fa-user fa-3x"></i>
											<h5></h5>
											<table class="table">
												<tbody>
													<tr>
														<th>User Id</th>
														<td><%=user.getId()%></td>
													</tr>


													<tr>
														<th>Full Name</th>
														<td><%=user.getName()%></td>
													</tr>

													<tr>
														<th>Email Id</th>
														<td><%=user.getEmail()%></td>
													</tr>

												</tbody>

											</table>
											

									<button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
											

										</div>

									</div>

								</div>
							</div>
						</div>


						<%
						} else {
						%>
						<a href="login.jsp" type="submit" class="btn btn-light m-2"><i
							class="fa-solid fa-right-to-bracket"></i> Login</a> <a
							href="register.jsp" type="submit" class="btn btn-light m-2"><i
							class="fa-solid fa-user-plus"></i> Register</a>

						<%
						}
						%>

					</form>
				</div>
			</div>


		</nav>
	</div>
</body>
<script type="text/javascript"></script>
</html>