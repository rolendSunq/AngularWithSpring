/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('scopeCtrl', function($scope) {
	$scope.data = {name: 'Adam'};
	$scope.city = 'London';
});