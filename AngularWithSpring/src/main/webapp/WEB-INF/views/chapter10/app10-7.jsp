<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-7</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter10-2Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div class="panel">
			<h3 class="panel-header">내장 변수 활용</h3>
			<pre>
				$index 변수는 ng-repeat 디렉티브에서 배열 내 각 항목의 위치를 알려주기 위해 제공하는 내장 변수다.
				자바스크립트 컬렉션 인덱스는 최초 값이 0으로 시작한다. AngularJS에서 데이터 바인딩은 자바스크립트 컬렉션 기반으로 표현식을 해석한다.
				따라서 $index + 1 을 추가한 예를 볼 수있다.
			</pre>
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
					<tr ng-repeat="item in todos">
						<td>{{$index + 1}}</td>
						<td ng-repeat="prop in item">{{prop}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>