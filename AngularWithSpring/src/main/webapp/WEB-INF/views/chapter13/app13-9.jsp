<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="myContextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko" ng-app="exampleApp">
	<head>
		<meta charset="UTF-8">
		<title>Chapter 13-9</title>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/angular.js"></script>
		<script type="text/javascript" src="<c:out value="${myContextPath}"/>/resources/angularjs/controllers/chapter13-9Controller.js"></script>
		<link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="<c:out value="${myContextPath}"/>/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	</head>
	<body ng-controller="topLevelCtrl">
		<div class="well">
	        <h4>Top Level Controller</h4>
	        <div class="input-group">
	            <span class="input-group-btn">
	                <button class="btn btn-default" type="button"
	                        ng-click="reverseText()">Reverse</button>
	                <button class="btn btn-default" type="button"
	                        ng-click="changeCase()">Case</button>
	            </span>
	            <input class="form-control" ng-model="dataValue">
	        </div>
	    </div>
	    <div class="well" ng-controller="firstChildCtrl">
	        <h4>First Child Controller</h4>
	        <div class="input-group">
	            <span class="input-group-btn">
	                <button class="btn btn-default" type="button" ng-click="reverseText()">Reverse</button>
	                <button class="btn btn-default" type="button" ng-click="changeCase()">Case</button>
	            </span>
	            <input class="form-control" ng-model="dataValue">
	        </div>
	    </div>
	    <div class="well" ng-controller="secondChildCtrl">
	        <h4>Second Child Controller</h4>
	        <div class="input-group">
	            <span class="input-group-btn">
	                <button class="btn btn-default" type="button" ng-click="reverseText()">Reverse</button>
	                <button class="btn btn-default" type="button" ng-click="changeCase()">Case</button>
	                <button class="btn btn-default" type="button" ng-click="shiftFour()">Shift</button>
	            </span>
	            <input class="form-control" ng-model="dataValue">
	        </div>
	    </div>
	</body>
</html>