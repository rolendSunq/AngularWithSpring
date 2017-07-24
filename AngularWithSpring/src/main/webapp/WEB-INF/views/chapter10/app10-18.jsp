<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-18</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter10-17Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <style type="text/css">
	    	.odd {background-color: lightcoral}
	    	.even {background-color: lavenderblush}
	    </style>
	</head>
	<body>
		<div id="todoPanel" class="panel" ng-controller="defaultCtrl">
			<h3 class="panel-header">To Do List</h3>
			<div class="well">
				<div class="radio" ng-repeat="button in ['None', 'Table', 'List']">
					<label ng-cloak>
						<input type="radio" ng-model="data.mode" value="{{button}}" ng-checked="$first"/>{{button}}
					</label>
				</div>
			</div>
			<div ng-switch on="data.mode" ng-cloak>
				<div ng-switch-when="Table">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>Action</th>
								<th>Done</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="item in todos" ng-class="$odd ? 'odd' : 'even'">
								<td>{{$index + 1}}</td>
								<td ng-repeat="prop in item">{{prop}}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div ng-switch-when="List">
					<ol>
						<li ng-repeat="item in todos">
							{{item.action}}<span ng-if="item.complete">(Done)</span>
						</li>
					</ol>
				</div>
				<div ng-switch-default>Select another option to display a layout</div>
			</div>
		</div>
	</body>
</html>