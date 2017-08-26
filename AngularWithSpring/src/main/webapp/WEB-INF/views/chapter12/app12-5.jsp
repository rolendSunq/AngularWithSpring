<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 12-5</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter12-5Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div id="todoPanel" class="panel" ng-controller="defaultCtrl">
			<form name="myForm" novalidate ng-submit="addUser(newUser)">
				<div class="well">
					<div class="form-group">
						<label>Name:</label>
						<input type="text" name="userName" class="form-control" required ng-model="newUser.name"/>
					</div>
					<div class="form-group">
						<label>Email:</label>
						<input type="email" name="userEmail" class="form-control" required ng-model="newUser.email"/>
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox" name="agreed" ng-model="newUser.agreed" required/>I agree to the terms and conditions
						</label>
					</div>
					<button type="submit" class="btn btn-primary btn-block" ng-disabled="myForm.$invalid">OK</button>
				</div>
				<div class="well">
					Message: {{message}}
					<div class="well">
						Valid: {{myForm.$valid}}
					</div>
				</div>
			</form>
		</div>
	</body>
</html>