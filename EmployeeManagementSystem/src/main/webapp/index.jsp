<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Employee Page</title>

<style type="text/css">
body {
	background-color: cornsilk
}

h1 {
	background-color: DodgerBlue;
	color: white;
	text-align: center;
	font-family: verdana;
}

h2 {
	text-align: center;
	font-family: courier;
}
</style>
</head>
<body>
	<h1>Hello World!</h1>
	<h2>
		<a href="employees/list"><span>Click to go to Employees
				Page</span></a><br />
	</h2>
</body>
</html>
