/**
 * 
 */
angular.module("sportsStroreAdmin")
	.constant("productUrl", "http://localhost:8080/angularjs/products/")
	.config(function ($httpProvider) {
		$httpProvider.defaults.withCredentials = true;
	}).controller("productCtrl", function ($scope, $resource, productUrl) {
		$scope.productsResource = $resource(productUrl + ":id", {id: "@id"});
		
		$scope.listProduct = function (product) {
			$scope.products = $scope.productsResource.query();
		}
		
		$scope.deleteProduct = function (product) {
			product.$delete().then(function () {
				$scope.products.splice($scope.products.indexOf(product), 1);
			});
		}
		
		$scope.createProduct = function (product) {
			new $scope.productResource(product).$save().then(function (newProduct) {
				$scope.products.push(newProduct);
				$scope.editedProduct = null;
			});
		}
		
		$scope.updateProduct = function (product) {
			product.$save();
			$scope.editedProduct = product;
		}
		
		$scope.cancelEdit = function () {
			$scope.editProduct = null;
		}
		
		$scope.listProducts();
	}); 