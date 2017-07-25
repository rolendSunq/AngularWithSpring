<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 11-8</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter11-8Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <style type="text/css">
	    	.Red {background-color: lightcoral;}
	    	.Green {background-color: lightgreen;}
	    	.Blue {background-color: lightblue;}
	    </style>
	</head>
	<body>
		<div id="todoPanel" class="panel" ng-contoller="defaultCtrl">
			<h3 class="panel-header">To Do List</h3>
			<div class="well">
				<span ng-repeat="button in buttonNames">
					<button class="btn btn-info" ng-click="data.rowColor">{{button}}</button>
				</span>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Action</th>
						<th>Done</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="item in todos" ng-class="data.rowColor" ng-mouseenter="handleEvent($event)" ng-mouseleave="handleEvent($event)">
						<td>{{$index + 1}}</td>
						<td>{{item.action}}</td>
						<td ng-class="data.columnColor">{{item.complete}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>