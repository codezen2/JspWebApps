<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style type="text/css">
body {
	background-color: #c5c5c5;
}

li {
	float: left;
	margin: 10px;
}

a {
	color: white;
	text-decoration: none;
	background-color: #4343ab;
	padding: 5px;
	border-radius: 5px;
	box-shadow: 3px 3px 3px grey;
}

a:hover {
	color: black;
	background-color: #ff8b8b;
}
</style>
</head>
<body>
	<%-- 		<%@include file="Header.jsp"%>--%>
	<jsp:include page="Header.jsp"/>
	<h1 align="center">HOME PAGE</h1>

	<table cellpadding="10" style="margin: 0 auto;">
		<tr>
			<td><a href="taxFrm.jsp">Tax Calculations</a></td>
			<td><a href="SkillFrm.jsp">Update Profile</a></td>
			<td><a href="QuizFrm.jsp">Quiz</a></td>
			<td><a href="EligibleFrm.jsp">Job Eligiblty</a></td>
			<td><a href="HtmlTutorial.jsp">HTML learning</a></td>
			<td><a href="/downamex">Download file</a></td>
		</tr>

	</table>
</body>
</html>