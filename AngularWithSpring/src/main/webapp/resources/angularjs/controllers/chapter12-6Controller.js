/**
 *
 */
angular.module('exampleApp', []).controller('defaultCtrl', function($scope){
	$scope.addUser = function(userDetails) {
		$scope.message = userDetails.name + " (" + userDetails.email + ") (" + userDetails.agreed + ")";
	}

	$scope.message = 'Ready';
});