/**
 *
 */
angular.module('exampleApp', []).controller('defaultCtrl', function ($scope) {
	$scope.addUser = function (userDetails) {
		$scope.message = userDetails.name + " (" + userDetail.email + ") (" + userDetails.agreed + ")";
	}

	$scope.message = 'Ready';
});