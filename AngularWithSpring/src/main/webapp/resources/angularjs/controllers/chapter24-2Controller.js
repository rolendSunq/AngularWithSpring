/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $injector){
	var counter = 0;
	var logClick = function($log, $exceptionHandler, message){
		if (counter == 0){
			$log.log(message);
			counter++;
		} else {
			$exceptionHandler('Already clicked');
		}
	}
	$scope.handleClick = function(){
		var deps = $injector.annotate(logClick);
		for (var i = 0; i < deps.length; i++) {
			console.log('Depandendy: ' + deps[i]);
		}
	}
});