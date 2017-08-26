/**
 * 
 */
angular.module('exampleApp', []).controller('defaultCtrl', function ($scope, $location) {
	$scope.message = "Tap Me!";
}).directive("tap", function () {
	return function (scope, elem, attrs) {
		elem.on("touchstart touchend", function () {
			scope.$apply(attrs["tap"]);
		});
	}
});