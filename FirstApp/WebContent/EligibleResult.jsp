<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DATA</title>
</head>
<body bgcolor="cyan">

	<h1 align="center"> Eligbile Results</h1>

	<hr />
	<h2 align="center">Are u Eligible to for Java Fresher</h2>
		<div align="center">
		<%=application.getInitParameter("headstr")%>
		<a href=<%=application.getInitParameter("homepg")%>>Home</a>
	</div>
	<form action="eligible">
		<table align="center" cellpadding="10" bgcolor="#e3e3e3">
			<tr>
				<td>Name</td>
				<td><%=request.getParameter("txtname") %></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><%=request.getParameter("txtage") %></td>
			</tr>
			<tr>
				<td>Qualification</td>
				<td><%=request.getParameter("txtqual") %></td>
			</tr>
			<tr>
				<td>Result</td>
				<td><%=request.getAttribute("result") %></td>
			</tr>
		</table>

	</form>
	<hr />

</body>
</html>