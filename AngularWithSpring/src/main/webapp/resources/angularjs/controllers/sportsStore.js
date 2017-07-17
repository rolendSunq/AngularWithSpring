/*
angular.module("sportsStore").controller("sportsStoreCtrl", function($scope) {
	$scope.data = {
		products: [
            {
                name: "Product #1", description: "A product",
                category: "Category #1", price: 100
            },
            {
                name: "Product #2", description: "A product",
                category: "Category #1", price: 110
            },
            {
                name: "Product #3", description: "A product",
                category: "Category #2", price: 210
            },
            {
                name: "Product #4", description: "A product",
                category: "Category #3", price: 202
            }
        ]
	};
});
*/

//--------------------------------------------------------------------------------
// 7-1: 파일 내 Ajax 요청 수행
//--------------------------------------------------------------------------------
/*
angular.module("sportsStore").constant("dataUrl", "http://localhost:8080/angularjs/products").controller("sportsStoreCtrl", function ($scope, $http, dataUrl) {
	$scope.data = {};
*/
	/*
	$http.get(dataUrl).success(function (data) {
		console.log(data);
		$scope.data.products = data;
	}).error(function (error) {
		$scope.data.error = error;
	});
	*/
/*
	$http({
		  method: 'GET',
		  url: dataUrl
		}).then(function successCallback(response) {
			$scope.data.products = response.data;
		  }, function errorCallback(response) {
			  $scope.data.error = response.error;
		  });
});
*/
angular.module("sportsStore")
	.constant("dataUrl", "http://localhost:8080/angularjs/products")
	.constant("orderUrl", "http://localhost:8080/angularjs/orders")
	.controller("sportsStoreCtrl", function ($scope, $http, $location, dataUrl, orderUrl, cart) {
	$scope.data = {};
	$http({
		method: 'GET',
		url: dataUrl
	}).then(function successCallback(response) {
		$scope.data.products = response.data;
	}, function errorCallback(response) {
		$scope.data.error = response.error;
	});
	
	$scope.sendOrder = function (shippingDetails) {
		var order = angular.copy(shippingDetails);
		order.products = cart.getProducts();
		var config = {
            headers : {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
		$http.post(url, data, config).then(function (response) {
			// This function handles success
			$scope.data.orderId = response.data.id;
			cart.getProducts().length = 0;
		}, function (response) {
			$scope.data.orderError = response.error;
		});
		$location.path("/complete");
	}
});