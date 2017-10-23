/**
 *
 */
var app = angular.module('exampleApp', ['increment', 'ngResource', 'ngRoute']);
app.constant('baseUrl', 'productsData');
app.config(function ($routeProvider, $locationProvider) {
	console.log('html5Mode before');
	$locationProvider.html5Mode({enabled: true, requireBase: false});
	console.log('html5Mode after');
	$routeProvider.when('/list', {templateUrl: '/template/tableView'});
	$routeProvider.when('/edit', {templateUrl: '/template/editorView'});
	$routeProvider.when('/create', {templateUrl: '/template/editorView'});
	$routeProvider.otherwise({templateUrl: '/template/tableView'});
});
app.controller('defaultCtrl', function($scope, $http, $resource, $location, baseUrl) {
	$scope.currentProduct = null;
	
	$scope.productsResource = $resource(baseUrl + ':id', {id: '@id'}, {create: {method: 'POST'}, save: {method: 'PUT'}});
	$scope.listProducts = function() {
		$scope.products = $scope.productsResource.query();
	}
	$scope.deleteProduct = function(product) {
		product.$delete().then(function() {
			$scope.products.splice($scope.products.indexOf(product), 1);
		});
		$location.path('/list');
	};
	$scope.createProduct = function(product) {
		new $scope.productsResource(product).$create().then(function(newProduct) {
			$scope.products.push(newProduct);
			$location.path('/list');
		});
	};
	$scope.updateProduct = function(product) {
		product.$save();
		$location.path('/list');
	};
	$scope.editProduct = function(product) {
		$scope.currentProduct = product;
		$location.path('/edit');
	};
	$scope.saveEdit = function(product) {
		if (angular.isDefined(product.id)) {
			$scope.updateProduct(product);
		} else {
			$scope.createProduct(product);
		}
		$scope.currentProduct = {};
	};
	$scope.cancelEdit = function() {
		if ($scope.currentProduct && $scope.currentProduct.$get) {
			$scope.currentProduct.$get();
		}
		$scope.currentProduct = {};
		$location.path('/list');
	};
	$scope.listProducts();
});