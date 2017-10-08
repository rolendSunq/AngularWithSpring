/**
 * 
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $http) {
	$scope.loadData = function() {
		$http.get('.productData.json').success(function(data) {
			$scope.products = data;
		});
	}
});