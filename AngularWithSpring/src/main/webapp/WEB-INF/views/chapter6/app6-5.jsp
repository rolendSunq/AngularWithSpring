<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko" ng-app="sportsStore">
	<head>
		<meta charset="UTF-8">		
		<title>SportsStore</title>
		<script type="text/javascript" src="/resources/angularjs/angular.js"></script>
		<script type="text/javascript">
			angular.module("sportsStore", ["customFilters"]);
		</script>
		<link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
		<link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
		<script type="text/javascript" src="/resources/angularjs/controllers/sportsStore.js"></script>
		<script type="text/javascript" src="/resources/angularjs/filters/customFilters.js"></script>
		<script type="text/javascript" src="/resources/angularjs/controllers/productListControllers.js"></script>
	</head>
	<body ng-controller="sportsStoreCtrl">
		<div class="navbar navbar-inverse">
			<a class="navbar-brand" href="#">SPORTS STORE</a>
		</div>
		<div class="panel panel-default row" ng-controller="productListCtrl">
			<div class="col-xs-3">
				<a ng-click="selectCategory()" class="btn btn-block btn-default btn-lg">Home</a>
				<a ng-repeat="item in data.products | orderBy:'category' | unique:'category'" ng-click="selectCategory(item)" class=" btn btn-block btn-default btn-lg" ng-class="getCategoryClass(item)">
					{{item}}
				</a>
			</div>
			<div class="col-xs-8">
				<div class="well" ng-repeat="item in data.products | filter:categoryFilterFn | range:selectedPage:pageSize">
					<h3>
						<strong>{{item.name}}</strong>
						<span class="pull-right label label-primary">
							{{item.price | currency}}
						</span>
					</h3>
					<span class="lead">{{item.description}}</span>
				</div>
				<div class="pull-right btn-group">
					<a ng-repeat="page in data.products | filter:categoryFilterFn | pageCount:pageSize" ng-click="selectPage($index + 1)" class="btn btn-default" ng-class="getPageClass($index + 1)">
						{{$index + 1}}
					</a>
				</div>
			</div>
	</body>
</html>
