/**
 *
 */
var app = angular.module('exampleApp', ['ngSanitize']);
app.controller('defaultCtrl', function($scope) {
	$scope.htmlData = "<p>This is <b onmouseover=alert('Attack!')>dangerous</b> data</p>";
});
