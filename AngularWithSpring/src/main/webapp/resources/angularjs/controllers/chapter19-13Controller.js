/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $exceptionHandler) {
	$scope.throwEx = function() {
		try {
			throw new Error('Triggered Exception');
		} catch(ex) {
			$exceptionHandler(ex, 'Button Click');
		}
	}
});
app.factory('$exceptionHandler', function($log) {
	return function (exception, cause) {
		$log.error('Message: ' + exception.message + ' (Cause: ' + cause + ')');
	}
});