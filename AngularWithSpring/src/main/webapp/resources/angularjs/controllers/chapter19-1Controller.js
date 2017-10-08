/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $window) {
	$scope.displayAlert = function(msg) {
		$window.alert(msg);
	};
});