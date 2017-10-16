/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('scopeCtrl', function($scope) {
	$scope.data = {
			name: 'Adam',
			defaultCity: 'London'
	};

	$scope.getCity = function(name) {
		return name == 'Adam' ? $scope.data.defaultCity : 'Unknown';
	};
});