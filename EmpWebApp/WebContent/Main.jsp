<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>Main Page</title>
<link rel="stylesheet" href="sapient.css">
</head>
<body>
	<%@include file="Header.jsp"%>

	<section id="home">
		<h2>Home Page</h2>
		<div>
			<nav>
				<table>
					<tr>
						<td><a href="viewall">View All Employees</a></td>
						<td><a href="">View Departments</a></td>
					</tr>
				</table>


			</nav>

		</div>

	</section>



	<%@include file="Footer.jsp"%>
</body>
</html>