<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
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
<form:form action="add" modelAttribute ="employee">
<table>

	<tr>
		<td>
			<form:label path="employeeId">
				<spring:message text="Id"/>
			</form:label>
		</td>
		<td>
			<form:input path="employeeId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="employeeId" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="employeeName">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="employeeName" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="employeeAddress">
				<spring:message text="Address"/>
			</form:label>
		</td>
		<td>
			<form:input path="employeeAddress" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="employeePhone">
				<spring:message text="Phone"/>
			</form:label>
		</td>
		<td>
			<form:input path="employeePhone" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="employeeSalary">
				<spring:message text="Salary"/>
			</form:label>
		</td>
		<td>
			<form:input path="employeeSalary" />
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit"value="<spring:message text="Save"/>" />
		</td>
		<td>
			<input type="submit"value="<spring:message text="Reset"/>" />
		</td>
	</tr>
</table>	
</form:form>
</body>
</html>