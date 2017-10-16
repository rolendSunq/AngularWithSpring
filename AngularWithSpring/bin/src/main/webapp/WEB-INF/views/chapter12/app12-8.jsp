<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 12-8</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter12-6Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <style>
	    	form .ng-invalid.ng-dirty {background-color: lightpink;}
	    	form .ng-valid.ng-dirty {background-color: lightgolenrodyellow;}
	    	span.summary.ng-invalid {color: red; font-weight: bold;}
	    	span.summary.ng-valid {color: green;}
	    	div.error {color: red; font-weight: bold;}
	    </style>
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
					<div class="error">
						<span ng-show="myForm.userEmail.$error.email">Please enter a valid email address</span>
						<span ng-show="myForm.userEmail.$error.required">Please enter a value</span>
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox" name="agreed" ng-model="newUser.agreed" required/>
							I gree to the terms and conditions
						</label>
					</div>
					<button type="submit" class="btn btn-primary btn-block" ng-disabled="myForm.$invaild">OK</button>
				</div>
				<div class="well">
					Message: {{message}}
					<div>
						Valid:
						<span class="summary" ng-class="myForm.$vaild ? 'ng-valid' : 'ng-invalid'">
							{{myForm.$valid}}
						</span>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>