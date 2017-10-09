/**
 * 
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $http) {
	$scope.loadData = function() {
		$http.get('productData.json').then(function(response) {
			console.log('Status ' + response.status);
			console.log('Type ' + response.headers('content-type'));
			console.log('Length ' + response.headers('content-length'));
			console.log('data::::', response.data);
			$scope.products = response.data;
		});
	}
});