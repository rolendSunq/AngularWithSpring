<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-13</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter10-13Controller.js"></script>
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
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model="showList">Use the list view
					</label>
				</div>
			</div>
			<ng-include src="viewFile()"></ng-include>
		</div>
		<div class="panel">
			<pre>
				showList 변수 값에 따라 두 뷰파일 중 한 파일 경로를 반환하는 viewFile이라는 동작을 컨트롤러에 정의했다.
				showList가 true이면 viewFile 동작에서는 list.html 파일 경로를 반환한다.
				showList가 false이거나 undefined이면 이 동작에서는 table.html 파일 경로를 반환한다.
				showList 변수의 초기 값은 undefined이다. 하지만 여기서는 ng-model 디렉티브를 사용해 변수 값을 설정하는
				체크 박스 input 엘리먼트를 추가했다.
				사용자가 이 엘리먼트를 체크하거나 해제하면 showList 변수 값을 변경할 수 있다.
				컨트롤러의 동작을 통해 src 어트리뷰트 값을 가져오게 끔 ng-include 디렉티브를 적용해야 한다.
				&lt;ng-include src="viewFile()"&gt;&lt;/ng-include&gt;
			</pre>
		</div>
	</body>
</html>