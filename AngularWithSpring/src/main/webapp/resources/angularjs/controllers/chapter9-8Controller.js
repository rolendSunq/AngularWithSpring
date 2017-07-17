/**
 * 
 */
var myApp = angular.module("exampleApp", []);

myApp.controller("dayCtrl", function ($scope) {
	var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
	$scope.day = dayNames[new Date().getDay()];
	$scope.tomorrow = dayNames[(new Date().getDay() + 1) % 7];
});

myApp.controller("tomorrowCtrl", function ($scope) {
	var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
	$scope.day = dayNames[(new Date().getDay() + 1) % 7];
});

myApp.directive("highlight", function () {
	return function (scope, element, attrs) {
		if (scope.day == attrs["highlight"]) {
			element.css("color", "red");
		}
	}
});