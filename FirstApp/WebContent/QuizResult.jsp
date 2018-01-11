<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
</head>
<body>
<h1 align="center">Quiz Result</h1>
<hr/>
	<div align="center">
		<%=application.getInitParameter("headstr")%>
		<a href=<%=application.getInitParameter("homepg")%>>Home</a>
	</div>
<div style="width:80%; margin:0 auto; background-color:wheat;">
	<table cellpadding="10" style="margin:0 auto;">
	 	<tr>
		 	<td>No of Questions Answered Corretly:</td>
		 	<td style="color:green;"><%=request.getAttribute("score") %><span style="color: black;">/4</span></td>
	 	</tr>
	 	<tr>
		 	<td>Percentage of Questions Answered Corretly:</td>
		 	<td><%=request.getAttribute("per") %><span style="font-weight: bold;">%</span></td>
	 	</tr>
	 		<tr>
		 	<td>Result:</td>
		 	<td><%=request.getAttribute("result") %></td>
	 	</tr>
	</table>

</div>
</body>
</html>