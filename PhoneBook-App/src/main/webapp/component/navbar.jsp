<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<a class="navbar-brand" href="#"><i
		class="fa-solid fa-address-card"></i>MyPhoneBook</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><i
					class="fa-solid fa-house-laptop"></i>Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="addContact.jsp"><i class="fa-solid fa-plus"></i>Add Phone
					Number</a></li>

			<li class="nav-item active"><a class="nav-link"
				href="viewContact.jsp"><i class="fa-solid fa-eye"></i>View
					Contact</a></li>
		</ul>

		<%
		User user = (User) session.getAttribute("user");

		if (user == null) {
		%>
		<form class="form-inline my-2 my-lg-0">
			<a href="login.jsp" class="btn btn-success"><i
				class="fa-solid fa-user"></i>Login</a> <a href="register.jsp"
				class="btn btn-danger ml-2"><i class="fa-solid fa-user-plus"></i>Register</a>
		</form>
		<%
		} else {
		%>
		<form class="form-inline my-2 my-lg-0">
		  <button class="btn btn-success"><%=user.getName()%></button>
		  <a href="logout" class="btn btn-danger ml-2">Logout</a>
		</form>
		<%
		}
		%>


	</div>
</nav>