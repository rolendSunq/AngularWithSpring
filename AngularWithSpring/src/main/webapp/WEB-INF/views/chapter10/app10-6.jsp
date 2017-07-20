<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-6</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter10-2Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div class="panel">
			<h3 class="panel-header">데이터 객체 키 활용</h3>
			<pre>
				처리되는 각 속성이나 데이터 객체의 키를 가져올 수 있는 ng-repeat 디렉티브 설정에 대해 대체 구문이 존재한다.
				<tbody>
					<tr ng-repeat="item in todos">
						<td ng-repeat="(key, value) in item">{{key}}={{value}}</td>
					</tr>
				</tbody>
				td 엘리먼트의 속성에서 ng-repeat 디렉티브에 사용된 속성에서 단일 변수명 대신 괄호안에 2개의 변수를 사용하였고 구분을 ','를 사용하였다.
				첫 번째 변수 key는 순회하는 디렉티브의 객체의 속성이 대입되며, 두번째 변수 value는 객체 속성의 값이 대입된다.
				이러한 구성 방식이 적용된 모든 객체에 반드시 적용되는 것은 아니며 객체의 구성 방식에 따라 변할 수 있다. 
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
						<td ng-repeat="(key, value) in item">{{key}}={{value}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>