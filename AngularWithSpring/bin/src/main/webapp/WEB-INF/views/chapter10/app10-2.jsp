<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
    <head>
        <meta charset="utf-8">
        <title>Chapter 10-2</title>
        <script type="text/javascript" src="/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="/resources/angularjs/controllers/chapter10-2Controller.js"></script>
		<link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
    </head>
    <body>
        <div class="panel" id="todoPanel" ng-controller="defaultCtrl">
            <h3 class="panel-header">TO DO List</h3>
            <div>There are {{todos.length}} items</div>
            <div>There are <span ng-bind="todos.length"></span> items</div>
            <div ng-bind-template="First: {{todos[0].action}}. Second: {{todos[1].action}}"></div>
            <div ng-non-bindable>AngularJS uses {{and}} characters for templates</div>
        </div>
    </body>
</html>
