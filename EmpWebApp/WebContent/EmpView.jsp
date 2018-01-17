<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<style type="text/css">
table div
{
background-color: wheat;
display:absolute;
}
table div div
{
background-color: blue;
color:white;
}
</style>
<title>View All</title>
<link rel="stylesheet" href="catlog.css">
<link rel="stylesheet" href="sapient.css">
<script type="text/javascript">
function display(id){
	document.getElementById(id).style.display='block';
} 
</script>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div id="home">
		<nav>
			<table>
				<tr>
					<td><a href="viewall">View All Employees</a></td>
					<td><a href="">View Departments</a></td>
				</tr>
			</table>
		</nav>
	</div>
	<section id="catlog">
		<h2>Employee List</h2>
		<div align="center">
			<h3>Page:${pgno}</h3>
		</div>
		<table>
			<thead>
				<tr>
					<th>Image</th>
					<th>Emp Id</th>
					<th>Emp Name</th>
					<th>Salary</th>
					<th>Date of Joining</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${emplist}" var="e">
					<tr>
						<td><img src="photos/${e.img}" /></td>
						<td>${e.empId}</td>
						<td>${e.empName}</td>
						<td>${e.sal}</td>
						<td>${e.doj}</td>
						<td><input type="button" onclick="display('${e.empId}')" value="edit">
							<div id="${e.empId}" style="display: none">
								<div align="center">Update Employee</div>
								<form action="">
									<table>
										<tr>
											<td>Emp Id</td>
											<td>${e.empId}</td>
										</tr>
										<tr>
											<td>Sal</td>
											<td><input type="text" name="txtsal" /></td>
										</tr>
										<tr>
											<td><input type="#" name="Cancel" /></td>
											<td><input type="submit" name="Update" /></td>
										</tr>
									</table>

								</form>
							</div></td>
					</tr>

				</c:forEach>
				<tr>
					<td colspan="3"><c:if test="${pgno>1}">
							<a href="viewall?pg=${pgno-1}">Prev</a>
						</c:if></td>
					<td colspan="3" align="right"><c:if
							test="${pgno < applicationScope.esize}">
							<a href="viewall?pg=${pgno+1}">Next</a>
						</c:if></td>

				</tr>
			</tbody>
		</table>


	</section>



	<%@include file="Footer.jsp"%>
</body>
</html>