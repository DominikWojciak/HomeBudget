<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style><%@include file="/WEB-INF/css/style.css"%></style>
<title>purchase list</title>
</head>
<body>
	<h2>Search by:</h2>
	<form:form method="post" modelAttribute="purchaseDto">
		<div>
			month<br>
			<form:select path="month" items="${months}" />
		</div>
		<div>
			name<br>
			<form:input path="name" />
		</div>
		<div>
			min<br>
			<form:input type="number" step="0.01" path="min" />
		</div>
		<div>
			max<br>
			<form:input type="number" step="0.01" path="min" />
		</div>
		<div>
			<input type="submit" />
		</div>
	</form:form>
	<hr>
	<h1>List of purchases</h1>
	<table>
		<c:forEach items="${purchases}" var="purchase">
			<tr>
				<td>${purchase.month}</td>
				<td>${purchase.price}</td>
				<td>${purchase.name}</td>
				<td>${purchase.description}</td>
			</tr>
		</c:forEach>
	</table>
	<a id="summary" href="http://localhost:8080/Home-Budget/">summary</a>
	<br>
	<a id="paycheckForm" class="form"
		href="http://localhost:8080/Home-Budget/purchase/form">add
		purchase</a>
</body>
</html>