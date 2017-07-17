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
			todoApp.filter("checkedItems", function() {
				return function (items, showComplete) {
					var resultArr = [];
					angular.forEach(items, function(item) {
						if(item.done == false || showComplete == true) {
							resultArr.push(item);
						}
					});
					return resultArr;
				};
			});
			todoApp.controller("ToDoCtr1", function($scope) {
				$scope.todo = model;
				$scope.incompleteCount = function() {
					var count = 0;
					angular.forEach($scope.todo.items, function(item) {
						if(!item.done) {count++;}
					});
					return count;
				};
				$scope.warningLevel = function() {
					return $scope.incomleteCount() < 3 ? "label-success" : "label-warning";
				};
				$scope.addNewItem = function(actionText) {
					$scope.todo.items.push({action: actionText, done:false});
				};
			});
		</script>
	</head>
	<body ng-controller="ToDoCtr1">
		<div class="page-header">
			<h1>
				{{todo.user}}'s To Do List
				<span class="label label-default" ng-hide="incompleteCount() == 0">
					{{incompleteCount()}}
				</span>
			</h1>
		</div>
		<div class="panel">
			<div class="input-group">
				<input class="form-control" ng-model="actionText"/>
				<span class="input-group-btn">
					<button class="btn btn-default" ng-click="addNewItem(actionText)">Add</button>
				</span>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Description</th>
						<th>Done</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="item in todo.items | checkedItems:showComplete | orderBy:'action'">
						<td>{{item.action}}</td>
						<td><input type="checkbox" ng-model="item.done"/></td>
					</tr>
				</tbody>
			</table>
			<div class="checkbox-inline">
				<label>
				<input type="checkbox" ng_model="showComplete"/> Show Complete</label>
			</div>
		</div>
	</body>
</html>