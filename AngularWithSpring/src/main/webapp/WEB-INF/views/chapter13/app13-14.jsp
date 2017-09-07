<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 13-14</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter13-14Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div class="well" ng-controller="simpleCtrl as ctrl">
			<h4>Top Level Controller</h4>
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button" ng-click="ctrl.reverseText()">Reverse</button>
				</span>
				<input type="text" class="form-control" ng-model="ctrl.dataValue" />
			</div>
		</div>
	</body>
</html>