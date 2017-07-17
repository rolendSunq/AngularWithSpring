/**
 * 
 */
angular.module("sportsStoreAdmin")
	.constant("authUrl", "http://localhost:8080/angularjs/users/login")
	.constant("ordersUrl", "http://localhost:8080/angularjs/orders")
	.controller("authCtrl", function ($scope, $http, $location, authUrl) {
		$locationProvider.hashPrefix('');
		$scope.authenticate = function (user, pass) {
			$http.post(authUrl, {
				username: user,
				password: pass
			}, {
				withCredentials: true
			}).then(function successCallback(response) {
				$location.path("/main");
			}, function errorCallback(response) {
				$scope.authenticationError = response.error;
			});
		}
	}).controller("mainCtrl", function ($scope) {
		$scope.screens = ["Products", "Orders"];
		$scope.current = $scope.screens[0];
		$scope.setScreen = function (index) {
			$scope.current = $scope.screens[index];
		};
		
		$scope.getScreen = function () {
			return $scope.current = "Products" ? "/resources/angularjs/views/adminProducts.html" : "/resources/angularjs/views/adminOrders.html";
		}
	}).controller("ordersCtrl", function ($scope, $http, ordersUrl) {
		$http.get(ordersUrl, {withCredentials: true})
			.then(function successCallback(response) {
				$scope.orders = response.data;
			}, function errorCallback(response) {
				$scope.authenticationError = response.error;
			});
		$scope.selectedOrder;
		$scope.selectOrder = function (order) {
			$scope.selectedOrder = order;
		};
		$scope.calcTotal = function (order) {
			var total = 0;
			for (var i = 0; i < order.products.length; i++) {
				total += order.products[i].count * order.products[i].price;
			}
			return total;
		}
	});