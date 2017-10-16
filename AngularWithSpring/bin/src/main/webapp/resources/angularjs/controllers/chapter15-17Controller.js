/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope) {
	$scope.names = ['Apples', 'Bananas', 'Oranges'];
});