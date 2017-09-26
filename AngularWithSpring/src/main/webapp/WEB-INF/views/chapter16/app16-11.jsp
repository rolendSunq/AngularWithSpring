<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Chapter 16-11</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter16-1Controller.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/directive/chapter16-11Directive.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <script type="text/templete" id="listTemplate">
	    	<ul>
	    		<li ng-repeat="item in data">{{item.price | currency}}</li>
	    	</ul>
	    </script>
	</head>
	<body ng-controller="defaultCtrl">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>Products</h3>
			</div>
			<div class="panel-body">
				<div unordered-list="products">This is where the list will go</div>
			</div>
			<div class="panel-body">
				<div unordered-list="products" template="table">This is where the list will go</div>
			</div>
		</div>
	</body>
</html>