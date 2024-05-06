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

h5 {
	text-align: center;
}

.tg {
	border: 3px solid black;
	border-radius: 10px;
	border-color: black;
	margin-left: auto;
	margin-right: auto;
}

td {
	text-align: center;
	border-radius: 5px;
	font-family: Verdana;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: black;
	color: darkslategrey;
	background-color: azure;
}

th {
	border-radius: 5px;
	font-family: serif;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: black;
	color: white;
	background-color: skyblue;
}
</style>
</head>
<body>
	<h1>Employee Management System</h1>
	<h5>
		<a href="add">Add Record</a><br />
	</h5>

	<c:if test="${!empty listEmployees}">
		<table class="tg">
			<tr>
				<th width="80">Employee ID</th>
				<th width="120">Employee Name</th>
				<th width="120">Employee Address</th>
				<th width="120">Employee Phone</th>
				<th width="120">Employee Salary</th>
				<th width="60">Action1</th>
				<th width="60">Action2</th>
			</tr>
			<c:forEach items="${listEmployees}" var="employee">
				<tr>
					<td>${employee.employeeId}</td>
					<td>${employee.employeeName}</td>
					<td>${employee.employeeAddress}</td>
					<td>${employee.employeePhone}</td>
					<td>${employee.employeeSalary}</td>
					<td><a href="edit/${employee.employeeId}">Update</a></td>
					<td><a href="remove/${employee.employeeId}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>