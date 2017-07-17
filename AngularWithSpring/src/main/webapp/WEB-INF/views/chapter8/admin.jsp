<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="sportsStoreAdmin">
	<head>
		<meta charset="UTF-8">
		<title>Administration</title>
		<script type="text/javascript" src="/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="/resources/angularjs/ngmodules/angular-route.js"></script>
		<script type="text/javascript" src="/resources/angularjs/ngmodules/angular-resource.js"></script>
		<link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
		<link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
		<script type="text/javascript" >
			angular.module("sportsStoreAdmin", [ "ngRoute", "ngResource" ]).config(
				function($routeProvider) {
					$routeProvider.when("/login", {
						templateUrl : "/resources/angularjs/views/adminLogin.html"
					});
	
					$routeProvider.when("/main", {
						templateUrl : "/resources/angularjs/views/adminMain.html"
					});
	
					$routeProvider.otherwise({
						redirectTo : "/login"
					});
				});
		</script>
		<script type="text/javascript" src="/resources/angularjs/controllers/adminControllers.js"></script>
		<script type="text/javascript" src="/resources/angularjs/controllers/adminProductController.js"></script>
	</head>
	<body>
		<ng-view />
	</body>
</html>
