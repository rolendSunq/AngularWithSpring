/**
 *
 */
var app = angular.module('exampleApp', ['increment', 'ngResource']);
app.constant('baseUrl', 'productsData');
app.controller('defaultCtrl', function($scope, $http, $resource, baseUrl) {
	$scope.displayMode = 'list';
	$scope.currentProduct = null;
	$scope.productsResource = $resource(baseUrl + '/:id', {id: '@id'});

	$scope.listProducts = function() {
		$scope.products = $scope.productsResource.query();
	};
	$scope.deleteProduct = function(product) {
		product.$delete().then(function() {
			$scope.products.splice($scope.prouducts.indexOf(product), 1);
		});
		$scope.displayMode = 'list';
	};
	$scope.createProduct = function(product) {
		new $scope.productsResource(product).$save().then(function(newProduct) {
			$scope.products.push(newProduct);
			$scope.diplayMode = 'list';
		});
	};
	$scope.updateProduct = function(product) {
		console.log('edit==>', product);
		product.$save();
		$scope.diplayMode = 'list';
	};
	$scope.editOrCreateProduct = function(product) {
		$scope.currentProduct = product ? product: {};
		$scope.displayMode = 'edit';
	};
	$scope.saveEdit = function(product) {
		if (angular.isDefined(product.id)) {
			$scope.updateProduct(product);
		} else {
			$scope.createProduct(product);
		}
	};
	$scope.cancelEdit = function() {
		if ($scope.currentProduct && $scope.currentProduct.$get) {
			$scope.currentProduct.$get();
		}
		$scope.currentProduct = {};
		$scope.displayMode = 'list';
	};
	$scope.listProducts();
	console.log('displayMode', $scope.displayMode);
});