<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>paycheck form</title>
</head>
<body>
	<form:form method="post" modelAttribute="paycheck">
		<div>
			month<br>
			<form:select path="month" items="${months}" />
		</div>

		<div>
			value<br>
			<form:input type="number" step="0.01" path="value" />
			<form:errors path="value" />
		</div>
		<div>
			description<br>
			<form:textarea path="description" />
			<form:errors path="description" />
		</div>
		<div>
			<input type="submit" />
		</div>
	</form:form>
	<a id="summary" href="http://localhost:8080/Home-Budget/">summary</a>
	<br>
	<a id="purchaseList" class="list"
		href="http://localhost:8080/Home-Budget/paycheck/list">paycheck
		list</a>
</body>
</html>