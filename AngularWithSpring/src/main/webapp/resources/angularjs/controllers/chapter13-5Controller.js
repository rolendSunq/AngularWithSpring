/**
 *
 */
angular.module('exampleApp', []).controller('simpleCtrl', function($scope) {
	$scope.address = {};
	$scope.setAddress = function(type, zip) {
		console.log('Type: ' + type + ' ' + zip);
		$scope.address[type] = zip;
	};
	$scope.copyAddress = function() {
		$scope.shippingZip = $scope.billingZip;
	};
});