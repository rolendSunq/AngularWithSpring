<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-10</title>
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
					<tr ng-repeat-start="item in todos">
						<td>This is item {{$index}}</td>
						<td>The Action is: {{item.action}}</td>
						<td>Item {{$index}} is {{item.complete ? '' : 'not'}} complete</td>
					</tr>
					<tr ng-repeat-end>
						<td colspan="3">&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="panel">
			<h3 class="panel-header">여러 개의 최상위 레벨 엘리먼트 반복</h3>
			<pre>
				ng-repeat-start, ng-repeat-end 디렉티브:
				여러개의 최상위 엘리먼트를 반복해야 할 때가 있다.
				주로 각 데이터 항목별로 여러개의 테이블 행을 생성해야 할 경우 사용한다.
			</pre>
		</div>
	</body>
</html>