<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="exampleApp" >
	<head>
	    <title>AngularJS Chapter9-11</title>
	    <link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <script type="text/javascript" src="/resources/angularjs/angular.js"></script>
	    <script type="text/javascript" src="/resources/angularjs/controllers/chapter9-12Controller.js"></script>
	
	</head>
	<body>
	    <div class="panel">
	        <div class="page-header">
	            <h3>AngularJS App</h3>
	        </div>
	        <h4 ng-controller="dayCtrl" highlight="Monday">
	        	Today is {{day || "(unknown)" | dayName}}
	        </h4>
	        <h4 ng-controller="tomorrowCtrl">
	        	Tomorrow is {{day || "(unknown)" | dayName}}
	        </h4>
	    </div>
	</body>
</html>