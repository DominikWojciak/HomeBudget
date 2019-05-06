<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style><%@include file="/WEB-INF/css/style.css"%></style>
<title>budget summary</title>
</head>
<body>
	<h2>Budget</h2>
	<table>
		<tr>
			<td>Income:</td>
			<td>${income}</td>
		</tr>
		<tr>
			<td>Spendings:</td>
			<td>${spendings}</td>
		</tr>
		<tr>
			<td>Balance:</td>
			<td>${balance}</td>
		</tr>
	</table>
	<a id="purchaseForm" class="form"
		href="http://localhost:8080/Home-Budget/purchase/form">add
		purchase</a>
	<br>
	<a id="purchaseList" class="list"
		href="http://localhost:8080/Home-Budget/purchase/list">show
		purchases</a>
	<br>
	<a id="paycheckForm" class="form"
		href="http://localhost:8080/Home-Budget/paycheck/form">add
		paycheck</a>
	<br>
	<a id="paycheckList" class="list"
		href="http://localhost:8080/Home-Budget/paycheck/list">show
		paychecks</a>
	<hr>
	<h3>Current month purchases:</h3>
	<table>
		<c:forEach items="${currentPurchases}" var="purchase">
			<tr>
				<td>${purchase.month}</td>
				<td>${purchase.price}</td>
				<td>${purchase.name}</td>
				<td>${purchase.description}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>