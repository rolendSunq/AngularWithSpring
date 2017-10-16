/**
 *
 */
var app = angular.module('exampleApp', ['customDirectives', 'customServices']);
app.config(function(logServiceProvider) {
	logServiceProvider.debugEnabled(true).messageCounterEnabled(false);
});
app.controller('defaultCtrl', function($scope, logService) {
	$scope.data = {
			cities: ['London', 'New York', 'Paris', 'Seoul'],
			totalClicks: 0
	};
	$scope.$watch('data.totalClicks', function(newVal) {
		logService.log('Total click count: ' + newVal);
	});
});
