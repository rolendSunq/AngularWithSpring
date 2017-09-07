<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 13-16</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/jQuery/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/jQuery/jquery-ui.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter13-17Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div id="angularRegion" class="well" ng-controller="simpleCtrl">
			<h4>AngularJS</h4>
			<div class="checkbox">
				<label>
					<input type="checkbox" ng-model="buttonEnabled" />Enable Button {{buttonEnabled}}
				</label>
			</div>
			Click counter: {{clickCounter}}
		</div>
		<div id="jqui" class="well">
			<h4>jQuery UI</h4>
			<button>Click Me!</button>
		</div>
	</body>
</html>