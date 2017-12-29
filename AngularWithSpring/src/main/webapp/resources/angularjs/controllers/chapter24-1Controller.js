/**
 *
 */
var app = angular.module('exampleApp', []);
app.config(function($provide){
	$provide.decorator('$log', function($delegate){
		$delegate.originalLog = $delegate.log;
		$delegate.log = function(message){
			$delegate.originalLog('Decorated: ' + message);
		}
		return $delegate;
	});
});
app.controller('defaultCtrl', function($scope, $log){
	$scope.handleClick = function(){
		$log.log('Button Clicked');
	}
});