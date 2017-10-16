/**
 *
 */
var app = angular.module('exampleApp', ['ngSanitize']);
app.controller('defaultCtrl', function($scope, $sanitize) {
	$scope.dangerousData = "<p>This is <b onmouseover=alert('Attack!')>dangerous</b> data</p>";
	$scope.$watch('dangerousData', function(newValue) {
		$scope.htmlData = $sanitize(newValue);
	})
});