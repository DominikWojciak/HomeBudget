<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style><%@include file="/WEB-INF/css/style.css"%></style>
<title>paycheck list</title>
</head>
<body>
	<h1>List of paychecks</h1>
	<table>
		<c:forEach items="${paychecks}" var="paycheck">
			<tr>
				<td>${paycheck.month}</td>
				<td>${paycheck.value}</td>
				<td>${paycheck.description}</td>
			</tr>
		</c:forEach>
	</table>
	<a id="summary" href="http://localhost:8080/Home-Budget/">summary</a>
	<br>
	<a id="paycheckForm" class="form"
		href="http://localhost:8080/Home-Budget/paycheck/form">add
		paycheck</a>
</body>
</html>