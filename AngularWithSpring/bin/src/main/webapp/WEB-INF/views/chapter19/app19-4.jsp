<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/docs/favicon.ico" rel="shortcut icon">
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular-resource.min.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular-route.min.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular-cookies.min.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular-sanitize.min.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular-touch.min.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular-animate.min.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter19-4Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
		<title>Chapter 19-4 DOM API Services</title>
	</head>
	<body ng-controller="defaultCtrl" class="well">
		<div class="panel panel-default">
			<h4 class="panel-heading">URL</h4>
			<div class="panel-body">
				<p>The URL is: {{URL}}</p>
				<div class="btn-group">
					<button class="btn btn-primary" ng-click="setUrl('reset')">Reset</button>
					<button class="btn btn-primary" ng-click="setUrl('path')">Path</button>
					<button class="btn btn-primary" ng-click="setUrl('hash')">Hash</button>
					<button class="btn btn-primary" ng-click="setUrl('search')">Search</button>
					<button class="btn btn-primary" ng-click="setUrl('url')">URL</button>
				</div>
			</div>
		</div>
	</body>
</html>