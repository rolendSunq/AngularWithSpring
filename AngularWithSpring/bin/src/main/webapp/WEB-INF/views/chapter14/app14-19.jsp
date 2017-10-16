<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 14-16</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter14-14Controller.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/filters/customFilters14-18.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body ng-controller="defaultCtrl">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>Products
					<span class="label label-primary">{{products.length}}</span>
				</h3>
			</div>
			<div class="panel-body">Limit:
				<select ng-model="limitVal" ng-options="item for item in limitRange"></select>
			</div>
			<div class="panel-body">
				<table class="table table-striped table-bordered table-condensed">
					<thead>
						<tr>
							<td>Name</td>
							<td>Category</td>
							<td>Expiry</td>
							<td class="text-right">Price</td>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="p in products | orderBy:[myCustomSorter, '-price'] | limitTo: limitVal">
							<td>{{p.name | labelCase}}</td>
							<td>{{p.category | labelCase:true}}</td>
							<td>{{p.expiry}}</td>
							<td class="text-right">{{p.price | currency}}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>