<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" ng-app="todoApp">
	<head>
		<meta charset="UTF-8">
		<title>TO DO List</title>
		<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet"/>
		<link href="/resources/bootstrap/css/bootstrap-theme.css" rel="stylesheet"/>
		<script type="text/javascript" src="/resources/angular-1.6.1/angular.js"></script>
		<script type="text/javascript">
			var todoApp = angular.module("todoApp", []);
		</script>
	</head>
	<body>
		<div class="page-header">
			<h1>SunQ's To Do List</h1>
		</div>
		<div class="panel">
			<div class="input-group">
				<input class="form-control"/>
				<span class="input-group-btn">
					<button class="btn btn-default">Add</button>
				</span>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Description</th>
						<th>Done</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Buy Flowers</td>
						<td>No</td>
					</tr>
					<tr>
						<td>Get Shoes</td>
						<td>No</td>
					</tr>
					<tr>
						<td>Collect Tickets</td>
						<td>Yes</td>
					</tr>
					<tr>
						<td>Call Joe</td>
						<td>No</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>