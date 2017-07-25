<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 11-5</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter11-2Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <style type="text/css">
	    	td > *:first-child {font-weight: bold}
	    </style>
	</head>
	<body>
		<div class="bg-primary">
			<h2>엘리먼트 표시, 숨김, 제거</h2>
		</div>
		<div id="todoPanel" class="panel" ng-controller="defaultCtrl">
			<h3 class="panel-header">To Do List</h3>
			<div class="checkbox well">
				<label>
					<input type="checkbox" ng-model="todos[2].complete" />Item 3 is complete
				</label>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Action</th>
						<th>Done</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="item in todos | filter: {complete: 'false'}">
						<td>{{$index + 1}}</td>
						<td>{{item.action}}</td>
						<td>{{item.complete}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>