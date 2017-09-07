/**
 *
 */
angular.module('exampleApp',[]).service('ZipCodes', function($rootScope) {

	return {
		setZipCode: function(type, zip) {
			this[type] = zip;
			$rootScope.$broadcast('zipCodeUpated', {
				type: type,
				zipCode: zip
			});
		}
	};

}).controller('simpleCtrl', function($scope, ZipCodes) {

	$scope.$on('zipCodeUpdated', function(event, args) {
		$scope[args.type] = args.zipCode;
	});
	$scope.setAddress = function(type, zip) {
		ZipCodes.setZipCode(type, zip);
		console.log('Type: ' + type + ' ' + zip);
	}
	$scope.copyAddress = function() {
		$scope.zip = $scope.bullingZip;
	}

});