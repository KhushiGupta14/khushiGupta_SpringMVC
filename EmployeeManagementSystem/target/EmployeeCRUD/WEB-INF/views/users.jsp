<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<center>
<%-- <a href="<c:url value='/employees/add' />"><span>Add Record</span></a><br/> --%>
 <a href="add"><span>Add Record</span></a><br/> 

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
			<%-- <td><a href="<c:url value='/employees/edit/${employee.employeeId}' />" >Update</a></td> --%>
			<td><a href="edit/${employee.employeeId}" >Update</a></td>
			<%-- <td><a href="<c:url value='/employees/remove/${employee.employeeId}' />" >Delete</a></td> --%>
			<td><a href="remove/${employee.employeeId}" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</center>
</body>
</html>