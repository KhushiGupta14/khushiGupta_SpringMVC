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


<div align="center">
		<h1 align="center">Update Employee</h1>
		<h2>Enter Employee Details</h2>
		<h1>${employee.employeeId}</h1>
		
		<form:form action="${pageContext.request.contextPath}/employees/processAdd" modelAttribute="employee">
			
			<table>
			
			<tr>
                     
                     
					<td><label for="Id">Id:</label> &nbsp;&nbsp;</td>

					<td><input type="number" id="Id" name="employeeId"
						value="${employee.employeeId}"></td>
				</tr>
				
				<tr>
                     
                     
					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="employeeName"
						value="${employee.employeeName}"></td>
				</tr>



				<tr>

					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="employeeAddress"
						value="${employee.employeeAddress}"></td>

				</tr>



				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="employeePhone"
						value="${employee.employeePhone}"></td>
				</tr>


				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="employeeSalary"
						value="${employee.employeeSalary}"></td>
				</tr>
			</table>
			

			<br>
			<br>

			<input class="form-submit-button" type="reset" value="Reset"> &nbsp;&nbsp;&nbsp; 
		 <input class="form-submit-button" type="submit" value="Submit">
		</form:form>
	</div>
<%-- <center>
<h1>Update Employee</h1>
employees/processAdd
${pageContext.request.contextPath}

<form:form action="${pageContext.request.contextPath}/employees/processAdd" modelAttribute="employee"><table>
	<tr>
		<td>
			<form:label path="employeeId">
				<spring:message text="Id"/>
			</form:label>
		</td>
		<td>
			<form:input path="employeeId" readonly="true" size="8" />
			
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
</center>
</form:form> --%>
</body>
</html>