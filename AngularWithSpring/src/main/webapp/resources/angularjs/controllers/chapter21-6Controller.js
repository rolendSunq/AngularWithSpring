/**
 *
 */
var app = angular.module('exampleApp', []);
app.constant('baseUrl', 'productsData');
app.controller('defaultCtrl', function($scope, $http, baseUrl) {
	$scope.displayMode = 'list';
	$scope.currentProduct = null;

	$scope.listProducts = function() {
		$http.get(baseUrl).then(function(responseData) {
			console.log(responseData.data);
			$scope.products = responseData.data;
		});
	};
	$scope.deleteProduct = function(product) {
		$http({
			method: 'DELETE',
			url: baseUrl + '?id=' + product.id
		}).then(function(msgObj) {
			console.log(msgObj);
			$scope.products.splice($scope.products.indexOf(product), 1);
		});
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
	};
	$scope.cancelEdit = function() {
		$scope.currentProduct = {};
		$scope.displayMode = 'list';
	};
	$scope.listProducts();
	console.log('displayMode', $scope.displayMode);
});