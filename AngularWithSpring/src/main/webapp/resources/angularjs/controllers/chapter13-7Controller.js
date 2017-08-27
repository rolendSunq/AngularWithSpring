/**
 * 
 */
angular.module('exampleApp', []).controller('simpleCtrl', function($scope) {
	$scope.$on('zipCodeUpdated', function(event, args) {
		$scope[args.type] = args.zipcode;
	});
});