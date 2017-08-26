<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 12-3</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter12-3Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div id="todoPanel" class="panel" ng-controller="defaultCtrl">
			<h3 class="panel-header">
				To Do List
				<span class="label label-info">{{(todos | filter: {complete: 'false'}).length}}</span>
			</h3>
			
			<div class="row">
				<div class="col-xs-6">
					<div class="well">
						<div class="form-group row">
							<label for="actionText">Action:</label>
							<input type="text" id="actionText" class="form-control" ng-model="newTodo.action"/>
						</div>
						<div class="form-group row">
							<label for="actionLocation">Location:</label>
							<select name="actionLocation" id="actionLocation" class="form-control" ng-model="newTodo.location">
								<option value="Home">Home</option>
								<option value="Office">Office</option>
								<option value="Mail">Mail</option>
							</select>
						</div>
						<button class="btn btn-primary btn-block" ng-click="addNewItem(newTodo)">Add</button>
					</div>
				</div>
			</div>
			<div class="col-xs-6">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Action</th>
							<th>Done</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="item in todos">
							<td>{{$index + 1}}</td>
							<td>{{item.action}}</td>
							<td>
								<input type="checkbox" ng-model="item.complete"/>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>