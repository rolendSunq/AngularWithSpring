/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $interval) {
	$interval(function() {
		$scope.time = new Date().toTimeString();
	}, 1000);
});