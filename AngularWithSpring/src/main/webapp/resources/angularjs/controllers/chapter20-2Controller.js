/**
 * 
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $http) {
	$scope.loadData = function() {
		$http.get('productData.json').then(function(responseData) {
			console.log(responseData.data);
			$scope.products = responseData.data;
		}, function() {});
	}
});