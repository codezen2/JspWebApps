<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML using c:out</title>
</head>
<body>
		<%@include file="Header.jsp"%>
	<h1 align="center">HTML using c:out</h1>

	<hr />
	<table cellpadding="10" bgcolor="wheat" style="margin: 0 auto;">

		<tr>
			<td>BOLDFACE</td>
			<td><c:out value="<b>Sapient</b>" escapeXml="true" /></td>
			<td><c:out value="<b>Sapient</b>" escapeXml="false" /></td>
		</tr>

		<tr>
			<td>Italics</td>
			<td><c:out value="<i>Sapient</i>" escapeXml="true" /></td>
			<td><c:out value="<i>Sapient</i>" escapeXml="false" /></td>
		</tr>
		<tr>
			<td>SuperScript</td>
			<td><c:out value="Sapient<sup>RazorFish</sup>" escapeXml="true" /></td>
			<td><c:out value="Sapient<sup>RazorFish</sup>" escapeXml="false" /></td>
		</tr>
		<tr>
			<td>SubScript</td>
			<td><c:out value="Sapient<sub>RazorFish</sub>" escapeXml="true" /></td>
			<td><c:out value="Sapient<sub>RazorFish</sub>" escapeXml="false" /></td>
		</tr>
		<%-- <tr>
			<td>Font</td>
			<td><c:out value="<font color="orange" size="7">Sapient</font>"
					escapeXml="true" /></td>
			<td><c:out value="<font color="orange" size="7">Sapient</font>"
					escapeXml="false" /></td>
		</tr> --%>

	</table>
</body>
</html>