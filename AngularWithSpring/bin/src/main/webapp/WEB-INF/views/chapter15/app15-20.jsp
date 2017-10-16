<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 15-20</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/jQuery/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter15-20Controller.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/directive/chapter15-20Directive.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body ng-controller="defaultCtrl">
		<div class="panel panel-default">
	        <div class="panel-heading">
	            <h3>Products</h3>
	        </div>
	        <div class="panel-body">
	            <button class="btn btn-primary" ng-click="incrementPrices()">
	                Change Prices
	            </button>
	        </div>
	        <div class="panel-body">
	            <div unordered-list="products" list-property="price | currency"></div>
	        </div>
    	</div>
	</body>
</html>