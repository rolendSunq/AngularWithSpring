<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-4</title>
		<script type="text/javascript" src="/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="/resources/angularjs/controllers/chapter10-2Controller.js"></script>
		<link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body>
		<div id="todoPanel" class="panel" ng-controller="defaultCtrl">
			<table class="table">
				<thead>
					<tr>
						<th>디렉티브</th>
						<th>적용 방식</th>
						<th>설명</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ng-cloak</td>
						<td>어트리뷰트, 클래스</td>
						<td>문서가 처음 로드될 때 잠시 보일수 있는 인라인 바인딩 표현식을 숨겨주는 CSS 스타일을 적용한다.</td>
					</tr>
					<tr>
						<td>ng-include</td>
						<td>엘리먼트, 어트리뷰트, 클래스</td>
						<td>HTML 일부를 로드, 처리하고 문서 객체 모델에 삽입한다.</td>
					</tr>
					<tr>
						<td>ng-repeat</td>
						<td>어트리뷰트, 클래스</td>
						<td>객체 내 배열 또는 속성에 해당하는 객체별로 단일 엘리먼트의 새 복사본을 생성한다.</td>
					</tr>
					<tr>
						<td>ng-repeat-start</td>
						<td>어트리뷰트, 클래스</td>
						<td>여러 개의 최상위 레벨 에릴먼트가 사용된 반복 영역의 시작 위치를 표시한다.</td>
					</tr>
					<tr>
						<td>ng-repeat-end</td>
						<td>어트리뷰트, 클래스</td>
						<td>여러 개의 최상위 레벨 엘리면트가 사용된 반복 영역의 종료 위치를 표시한다.</td>
					</tr>
					<tr>
						<td>ng-switch</td>
						<td>엘리먼트, 어트리뷰트</td>
						<td>데이터 바인딩 값을 기반으로 문서 객체 모델의 엘리먼트를 변경한다.</td>
					</tr>
				</tbody>
			</table>
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
						<td>{{item.action}}</td>
						<td>{{item.complete}}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="panel">
			<pre>
				ng-repeat 디렉티브 사용 방법:
				1. 데이터 객체 소스를 지정하고, 템플릿 내에서 처리되는 객체를 참조할 때 사용할 이름을 지정한다.
					<tr ng-repeat="item in todos">
				2. ng-repeat 디렉티브 어트리뷰트 값의 기본 형식:
					<변수> in <소스>
					소스: 컨트롤러 $scope에 정의된 객체 또는 배열
					배열 객체를 순회하며, 엘리먼트 및 그 내용을 새로 복사하고, 안에 들어 있는 템플릿을 처리한다.
					디렉티브 어트리뷰트 값에 지정한 <변수>명은 현재 데이터 객체를 참조할 때 사용한다.
			</pre>
		</div>
	</body>
</html>