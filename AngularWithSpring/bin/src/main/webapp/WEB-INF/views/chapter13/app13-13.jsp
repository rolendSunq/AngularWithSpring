<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 13-13</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter13-13Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div class="well" ng-controller="firstController">
			<h4>First Controller</h4>
			<div class="input-group">
				<span class="input-group-btn">
					<button type="button" class="btn btn-default" ng-click="reverseText()">Reverse</button>
				</span>
				<input type="text" class="form-control" ng-model="dataValue" />
			</div>
		</div>
		<div class="well" ng-controller="secondController">
			<h4>Second Controller</h4>
			<div class="input-group">
				<span class="input-group-btn">
					<button type="button" class="btn btn-default" ng-click="changeCase()">Case</button>
				</span>
				<input type="text" class="form-control" ng-model="dataValue" />
			</div>
		</div>
	</body>
</html>