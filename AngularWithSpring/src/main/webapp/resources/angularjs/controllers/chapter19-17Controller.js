/**
 *
 */
var app = angular.module('exampleApp', ['ngSanitize']);
app.controller('defaultCtrl', function($scope, $sce) {
	$scope.htmlData = "<p>This is <b onmouseover=alert('Attack!')>dangerous</b> data</p>";
	$scope.$watch('htmlData', function(newValue) {
		$scope.trustedData = $sce.trustAsHtml(newValue);
	});
});