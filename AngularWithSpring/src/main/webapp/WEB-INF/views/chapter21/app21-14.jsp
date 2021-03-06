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
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter21-14Controller.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/directive/chapter21-9Directive.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
		<title>Chapter 21-9</title>
	</head>
	<body ng-controller="defaultCtrl">
		<div class="panel panel-primary">
			<h3 class="panel-heading">Products</h3>
			<ng-include src="'template/tableView2'" ng-show="displayMode == 'list'"></ng-include>
			<ng-include src="'template/editorView'" ng-show="displayMode == 'edit'"></ng-include>
		</div>
	</body>
</html>