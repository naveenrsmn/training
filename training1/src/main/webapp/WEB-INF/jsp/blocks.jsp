<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

	<!-- Access the bootstrap Css like this, 
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Spring Boot</a>
			</div>
		</div>
	</nav>

<div class="container">
		<form action="/modifyblock" method="post">
			<c:forEach items="${blockchain}" var="block" varStatus="i">
				<c:if test="${i.first}">
				inputData_${i.index} <input type="text" name="inputData_${i.index}" value="${block.data}" readonly/><br>
				</c:if>
				<c:if test="${!i.first}">
				inputData_${i.index} <input type="text" name="inputData_${i.index}" value="${block.data}"/><br>
				</c:if>
			</c:forEach>
			<input type="submit" value="Submit">
		</form>
		
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</div>
</body>

</html>