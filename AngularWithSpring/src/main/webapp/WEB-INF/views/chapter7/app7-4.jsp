<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" ng-app="sportsStore">
	<head>
		<meta charset="UTF-8">
	    <title>SportsStore</title>
	    <script type="text/javascript" src="/resources/angularjs/angular.js"></script>
	    <link href="/resources/angularjs/bootstrap.css" rel="stylesheet" />
	    <link href="/resources/angularjs/bootstrap-theme.css" rel="stylesheet" />
	    <script type="text/javascript">
	        angular.module("sportsStore", ["customFilters", "cart"]);
	    </script>
	    <script type="text/javascript" src="/resources/angularjs/controllers/sportsStore.js"></script>
	    <script type="text/javascript" src="/resources/angularjs/filters/customFilters.js"></script>
	    <script type="text/javascript" src="/resources/angularjs/controllers/productListControllers.js"></script>
	    <script type="text/javascript" src="/resources/angularjs/components/cart/cart.js"></script>
	</head>
	<body ng-controller="sportsStoreCtrl">
	    <div class="navbar navbar-inverse">
	        <a class="navbar-brand" href="#">SPORTS STORE</a>
	        <cart-summary/>
	    </div>
	    <div class="alert alert-danger" ng-show="data.error">
	        Error ({{data.error.status}}). The product data was not loaded.
	        <a href="/resources/angularjs/views/app.html" class="alert-link">Click here to try again</a>
	    </div>
	    <ng-include src="'/resources/angularjs/views/productList.html'"/>
	    <p>
	    	부분 뷰 사용의 3가지 장점:
	    </p>
	    <ul>
	    	<li>Application을 관리하기 쉬운 단위로 나눌 수 있다.</li>
	    	<li>Application에서 반복적으로 사용하는 HTML 요소를 생성할 수 있다.</li>
	    	<li>Application에서 특정 기능을 사용하면서 다양한 기능 영역을 보여주기 쉽다. ---- URL 라우트 정의</li>
	    </ul>
	</body>
</html>
