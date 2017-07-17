<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" ng-app="todoApp">
	<head>
		<meta charset="UTF-8">
		<title>TO DO List</title>
		<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet"/>
		<link href="/resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet"/>
		<script type="text/javascript" src="/resources/angular-1.6.1/angular.js"></script>
		<script type="text/javascript">
			var model = {
				user: "SunQ",
				items: [
					{action: "Buy Flowers", done: false},
					{action: "Get Shoes", done: false},
					{action: "Collect Tickets", done: true},
					{action: "Call Kim", done: false}
				]
			};
			var todoApp = angular.module("todoApp", []);
			todoApp.controller("ToDoCtr1", function($scope) {
				$scope.todo = model;
			});
		</script>
	</head>
	<body ng-controller="ToDoCtr1">
		<div class="page-header">
			<h1>
				{{todo.user}}'s To Do List
				<span class="label label-default">{{todo.items.length}}</span>
			</h1>
		</div>
		<div class="panel">
			<div class="input-group">
				<input class="form-control"/>
				<span class="input-group-btn">
					<button class="btn btn-default">Add</button>
				</span>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Description</th>
						<th>Done</th>
					</tr>
					<tr ng-repeat="item in todo.items">
						<th>{{item.action}}</th>
						<th><input type="checkbox" ng-model="item.done"/></th>
						<th>{{item.done}}</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</body>
</html>