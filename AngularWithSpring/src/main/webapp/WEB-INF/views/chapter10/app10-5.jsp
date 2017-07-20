<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-5</title>
		<script type="text/javascript" src="/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="/resources/angularjs/controllers/chapter10-2Controller.js"></script>
		<link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div id="todoPanel" class="panel" ng-controller="defaultCtrl">
			<h3 class="panel-header">To Do List</h3>
			<table class="table">
				<thead>
					<tr>
						<th>Action</th>
						<th>Done</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="item in todos">
						<td ng-repeat="prop in item">{{prop}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>