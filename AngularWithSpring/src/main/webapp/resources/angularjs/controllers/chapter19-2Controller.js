/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $window, $document) {
	$document.find('button').on('click', function(event) {
		$window.alert(event.target.innerText);
	});
});