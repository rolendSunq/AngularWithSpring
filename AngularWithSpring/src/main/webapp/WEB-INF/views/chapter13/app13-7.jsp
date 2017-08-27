<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 13-7</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter13-5Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div class="well" ng-controller="simpleCtrl">
			<h4>Billing Zip Code</h4>
			<div class="form-group">
				<input class="form-control" ng-model="zip"/>
			</div>
			<button class="btn btn-primary" ng-click="setAddress('billingZip', zip)">Save Billing</button>
		</div>
		<div class="well" ng-controller="simpleCtrl">
			<h4>Shipping Zip Code</h4>
			<div class="form-group">
				<input class="form-control" ng-model="zip"/>
			</div>
			<button class="btn btn-primary" ng-click="copyAddress()">Use Billing</button>
			<button class="btn btn-primary" ng-click="setAddress('shippingZip', zip)">Save Shipping</button>
		</div>
	</body>
</html>