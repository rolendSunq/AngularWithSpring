/**
 *
 */
var app = angular.module('exampleApp', ['increment', 'ngResource', 'ngRoute']);
app.constant('baseUrl', '/angularjs/productsData');
app.factory('productsResource', function($resource, baseUrl) {
	return $resource(baseUrl + ':id', {id: '@id'}, {create: {method: 'POST'}, save: {method: 'PUT'}});
});
app.config(function ($routeProvider, $locationProvider) {
	$locationProvider.html5Mode({enabled: true, requireBase: false});
	$routeProvider.when('/edit/:id', {templateUrl: '/angularjs/template/editorView', controller: 'editCtrl'});
	$routeProvider.when('/create', {templateUrl: '/angularjs/template/editorView', controller: 'editCtrl'});
	$routeProvider.otherwise({
		templateUrl: '/angularjs/template/tableView3',
		contorller: 'tableCtrl',
		resolve: {
			data: function(productsResource) {
				return productResource.query();
			}
		}
	});
});
app.controller('defaultCtrl', function($scope, $http, $resource, $location, productsResource) {
	$scope.data = {};
	$scope.createProduct = function(product) {
		new $scope.productsResource(product).$create().then(function(newProduct) {
			$scope.products.push(newProduct);
			$location.path('/list');
		});
	};
	$scope.deleteProduct = function(product) {
		product.$delete().then(function() {
			$scope.products.splice($scope.products.indexOf(product), 1);
		});
		$location.path('/list');
	};
});
app.controller('tableCtrl', function($scope, $location, $route, data) {
	$scope.data.products = data;
	$scope.refreshProducts = function() {
		$route.reload();
	}
});
app.controller('editCtrl', function($scope, $routeParams, $location) {
	$scope.currentProduct = null;
	if ($location.path().indexOf('/edit/') == 0) {
		var id = $routeParams['id'];
		for (var i = 0; i < $scope.products.length; i++) {
			if ($scope.products[i].id == id) {
				$scope.currentProduct = $scope.products[i];
				break;
			}
		}
	}
	$scope.cancelEdit = function() {
		$location.path('/list');
	};
	$scope.updateProduct = function(product) {
		product.$save();
		$location.path('/list');
	};
	$scope.saveEdit = function(product) {
		if (angular.isDefined(product.id)) {
			$scope.updateProduct(product);
		} else {
			$scope.createProduct(product);
		}
		$scope.currentProduct = {};
	}
});