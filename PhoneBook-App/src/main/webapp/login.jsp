<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="component/allCss.jsp"%>
</head>
<body style="background-color: #96d0d9">
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Do login here</h4>
						
						<%
						    String invalidMsg=(String)session.getAttribute("invalidMsg");
						    if(invalidMsg!=null)
						    {%>
							    <p class="text-danger text-center"><%=invalidMsg%></p>
						    <%
						    session.removeAttribute("invalidMsg");
						    }
						%>
						
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input name="email"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input name="password"
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 160px">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>