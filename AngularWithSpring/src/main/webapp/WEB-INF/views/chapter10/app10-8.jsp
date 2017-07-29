<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-8</title>
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
		<div class="panel">
			<table class="table">
				<thead>
					<tr>
						<td>변수</td>
						<td>설명</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>$index</td>
						<td>현재 객체나 속성의 위치를 반환한다.</td>
					</tr>
					<tr>
						<td>$first</td>
						<td>현재 객체가 컬렉션 내 첫 번째 객체이면 true를 반환한다.</td>
					</tr>
					<tr>
						<td>$middle</td>
						<td>현재 객체가 컬렉션 내 첫 번째나 마지막 객체가 아니면 true를 반환한다.</td>
					</tr>
					<tr>
						<td>$last</td>
						<td>현재 객체가 컬렉션 내 마지막 객체이면 true를 반환한다.</td>
					</tr>
					<tr>
						<td>$even</td>
						<td>현재 객체가 컬렉션 내 짝수 번째 객체이면 true를 반환한다.</td>
					</tr>
					<tr>
						<td>$odd</td>
						<td>현재 객체가 컬렉션 내 홀수 번째 객체이면 true를 반환한다.</td>
					</tr>
				</tbody>
			</table>
		</div>
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
						<td ng-repeat="prop in item">{{prop}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>