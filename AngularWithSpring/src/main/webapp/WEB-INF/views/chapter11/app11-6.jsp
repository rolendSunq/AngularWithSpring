<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 11-5</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter11-6Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <style type="text/css">
	    	tr.Red {background-color: lightcoral;}
	    	tr.Green {background-color: lightgreen;}
	    	tr.Blue {background-color: lightblue;}
	    </style>
	</head>
	<body>
		<div id="todoPanel" class="panel" ng-controller="defaultCtrl">
			<h3 class="panel-header">To Do List</h3>
			<div class="row well">
				<div class="col-xs-6" ng-repeat="(key, val) in settings">
					<h4>{{key}}</h4>
					<div class="radio" ng-repeat="button in buttonNames">
						<label>
							<input type="radio" ng-model="settings[key]" value="{{button}}"/>{{button}}
						</label>
					</div>
				</div>
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
					<tr ng-repeat="item in todos" ng-class="settings.Rows">
						<td>{{$index + 1}}</td>
						<td>{{item.action}}</td>
						<td ng-style="{'background-color': settings.Columns}">{{item.complete}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>