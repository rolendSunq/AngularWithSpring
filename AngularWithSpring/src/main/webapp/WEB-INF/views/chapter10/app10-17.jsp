<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-17</title>
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
					<label>
						<input type="radio" ng-model="data.mode" value="{{button}}" ng-checked="$first"/>{{button}}
					</label>
				</div>
			</div>
			<div ng-switch on="data.mode">
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
							{{item.action}}<span ng-if="item.complete"> (Done)</span>
						</li>
					</ol>
				</div>
				<div ng-switch-default>
					Select another option to display a layout
				</div>
			</div>
		</div>
		<div class="panel">
			<pre class="bg-faded">
				ng-repeat 다이렉티브를 사용하여 radio 버튼 생성.
				각 라디오 버튼은 양방향 데이터 바인딩을 사용하여 data.mode라는 모델 속성 값을 설정한다.
				라디오 버튼들의 정의된 값은 각 각 None, Table, List 이며 각 값이 일치하면 그 항목에 표시할 레이아웃을 보여준다.
				
				스코프 속성 mode를 data객체의 속성으로 정의했다. AngularJS의 자체 스코프 상속과 일부 디렉티브(ng-model 포함)에서 
				자체 스코프를 생성하는 방식이다. 중요성의 기준은 예제를 통하여 판단하기 바란다.
				
				ng-switch 디렉티브는 on 어트리뷰트를 사용하여 적용하며, 표시할 컨텐츠 영역을 결정하는 표현식을 지정한다.
				&lt;div ng-switch on="data.mode"&gt;
				
				라디오 버튼의 선택에 따른 data.mode 모델 속성값을 지정했다. 그리고 ng-switch-when 디렉티브를 사용하여 컨텐츠 영역을 지정한다.
				&lt;div ng-switch-when="Table"&gt;
				&lt;div ng-switch-when="List"&gt;
				on 표현식에 일치되는 ng-switch-when 어트리뷰트에 지정된 값과 일치하면 해당 엘리먼트를 보여준다.
				ng-switch-default 디렉티브는 ng-switch-when 영역에서 일치하지 않은 값이 있을 때 보여줄 기본 콘텐츠를 지정할 때 사용된다.
				&lt;div ng-switch-default&gt;
			</pre>
		</div>
	</body>
</html>