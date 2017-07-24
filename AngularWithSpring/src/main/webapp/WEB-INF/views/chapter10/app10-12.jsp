<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 10-12</title>
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
			<ng-include src="'${myContextPath}/resources/angularjs/components/table/table.html'"></ng-include>
		</div>
		<div class="panel">
			<table class="table">
				<thead>
					<tr>
						<th>파라미터</th>
						<th>설명</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>src</td>
						<td>로드할 콘텐츠의 URL을 지정한다.</td>
					</tr>
					<tr>
						<td>onload</td>
						<td>콘텐츠가 로드될 때 실행할 표현식을 지정한다.</td>
					</tr>
					<tr>
						<td>autoscroll</td>
						<td>콘텐츠가 로드될 때 AngularJS에서 뷰포트를 스크롤할지 여부를 지정한다.</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="panel">
			<pre>
				src 어트리뷰트는 로드처리하고 문서에 추가할 부분 뷰 파일의 위치를 설정한다.
				angularJS에서 app10-12.jsp파일을 처리할 때 ng-include 디렉티브를 만나면 AngularJS는 자동으로 table.html 파일에 대해 Ajax 요청을 보내고
				파일 내용을 처리한 후 문서에 첨부해준다.
				* 부분 뷰의 동적 생성
				- 뷰를 중복해 선언하지 않고 재사용할 수 있게 한다.
				- 데이터를 일관된 방식으로 표현하게 해준다.
				- '' 작은 따옴표로 문자열 리터럴로 지정한다. src 어트리뷰트가 자바스크립트 표현식으로 해석되므로 파일을 정의하려면 파일명을 작은 따옴표로 감싸야 한다.
			</pre>
		</div>
	</body>
</html>