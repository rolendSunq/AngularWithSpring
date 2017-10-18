/**
 * 
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope) {
	$scope.displayMode = 'list';
	$scope.currentProduct = null;
	$scope.listProduct = null;
	$scope.listProducts = function() {
		$scope.products = [
			{id: 0, name: 'Dummmy1', category: 'Test', price: 1.25},
			{id: 1, name: 'Dummmy2', category: 'Test', price: 2.45},
			{id: 0, name: 'Dummmy3', category: 'Test', price: 4.25}
		];
	};
	$scope.deleteProduct = function(product) {
		$scope.products.splice($scope.products.indexOf(product), 1);
	};
	$scope.createProduct = function(product) {
		$scope.products.push(product);
		$scope.displayMode = 'list';
	};
	$scope.updataProduct = function(product) {
		for (var i = 0; i < $scope.products.length; i++) {
			if ($scope.products[i].id == product.id) {
				$scope.products[i] = product;
				break;
			}
		}
		$scope.displayMode = 'list';
	};
	$scope.editOrCreateProduct = function(product) {
		$scope.currentProduct = product ? angular.copy(product) : {};
		$scope.displayMode = 'edit';
	};
	$scope.saveEdit = function(product) {
		if (angular.isDefined(product.id)) {
			$scope.updateProduct(product);
		} else {
			$scope.createProduct(product);
		}
	}
});