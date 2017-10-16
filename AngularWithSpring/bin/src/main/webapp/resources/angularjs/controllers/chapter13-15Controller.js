/**
 *
 */
$(document).ready(function() {
	$('#jqui button').button().click(function(e) {
		alert('JQuery UI Button was clicked');
	});
});

var app = angular.module('exampleApp', []);
app.controller('simpleCtrl', function($scope) {
	$scope.buttonEnabled = true;
	$scope.clickCounter = 0;
	$scope.handleClick = function() {
		$scope.clickCounter++;
	};
});