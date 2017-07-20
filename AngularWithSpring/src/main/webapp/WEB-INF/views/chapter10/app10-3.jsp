<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
<head>
	<meta charset="UTF-8">
	<title>app10-3</title>
	<script type="text/javascript" src="/resources/angularjs/angular.js"></script>
	<script type="text/javascript" src="/resources/angularjs/controllers/chapter10-2Controller.js"></script>
	<link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
    <link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
</head>
	<body>
		<div id="todoPanel" class="panel" ng-contoller="defaultCtrl">
			<h3 class="panel-header">To Do List</h3>
			<div class="well">
				<div>The first item is: {{todos[0].action}}</div>
				<div class="form-group well">
					<label for="firstItem">Set First Item</label>
					<input name="firstItem" class="form-control" ng-model="todos[0].action" />
				</div>
			</div>
		</div>
		
	</body>
</html>