/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $exceptionHandler) {
	$scope.throwEx = function() {
		try {
			throw new Error('Triggered Exception');
		} catch (ex) {
			$exceptionHandler(ex.message, 'Button Click');
		}
	}
});