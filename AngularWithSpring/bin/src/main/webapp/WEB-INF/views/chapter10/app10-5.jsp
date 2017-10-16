<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-5</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter10-2Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div class="panel">
			<h3>객체 속성 반복</h3>
			<pre>
				ng-repeat 는 객체 속성을 반복할 수도 있다. 또한 계층적으로 중첩해 사용할 수도 있다.
				<tbody>
					<tr ng-repeat="item in todos">
						<td ng-repeat="prop in item">{{prop}}</td>
					</tr>
				</tbody>
				tr에 ng-repeat 디렉티브를 사용하여 tr 엘리먼트를 생성한다. 각 객체는 item 변수로 대입된다.
				tr의 자식 노드인 td 는 tr 엘리먼트와 같이 item 변수의 속성 별로 td 엘리먼트를 생성한다.
				td의 콘텐츠는 단방향 데이터 바인딩을 사용하여 속성에 대한 콘텐츠가 표시된다.
			</pre>
		</div>
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