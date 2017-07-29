<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-9</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter10-2Controller.js"></script>
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
						<td>{{item.action}}</td>
						<td><span ng-if="$first || $last">{{item.complete}}</span></td>
					</tr>
				</tbody>
			</table>
			<div class="panel">
				<pre>
					ng-if 디렉티브: 엘리먼트가 false 인 경우 엘리먼트를 제거한다.
					span 엘리먼트를 제어하여 첫 엘리먼트와 마지막 엘리먼트 항목만 표시되었다.
				</pre>
			</div>
		</div>
	</body>
</html>