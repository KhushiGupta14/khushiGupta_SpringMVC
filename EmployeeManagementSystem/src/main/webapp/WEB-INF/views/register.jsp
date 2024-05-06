<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Page</title>
<style type="text/css">
body {
	background-color: LavenderBlush;
}

h1 {
	background-color: DodgerBlue;
	color: white;
	text-align: center;
	font-family: verdana;
}

h4 {
	text-align: center;
	font-family: courier;
}

.tg {
	border-radius: 10px;
	border: 3px solid black;
}

td {
	border-radius: 5px;
	font-family: Verdana;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: Lightcyan;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Employee Management System</h1>
		<h2>Enter Employee Details</h2>
		<form:form action="processAdd" modelAttribute="employee" class="form">
			<table class="tg">
				<tr>

					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="employeeName"
						placeholder="Enter name"></td>
				</tr>

				<tr>
					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="employeeAddress"
						placeholder="Enter address"></td>
				</tr>

				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="employeePhone"
						placeholder="Enter phone no."></td>
				</tr>

				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="employeeSalary"
						placeholder="Enter salary"></td>
				</tr>
				
				<tr>
					<td><input class="form-submit-button" type="submit"
						value="Submit"></td>
					<td><input class="form-submit-button" type="reset"
						value="Reset"></td>
				</tr>
			</table>
		</form:form>

		<h4>
			<a href="${pageContext.request.contextPath}/index.jsp"> Click
				here to go Home Page</a>
		</h4>
	</div>

</body>
</html>