/**
 * 
 */

var myApp = angular.module("exampleApp", []);

myApp.controller("dayCtrl", function ($scope, days) {
	$scope.day = days.today;
});

myApp.controller("tomorrowCtrl", function ($scope, days) {
	$scope.day = days.tomorrow;
});

myApp.directive("highlight", function ($filter) {
	var dayFilter = $filter("dayName");
	return function (scope, element, attrs) {
		if (dayFilter(scope.day) == attrs["highlight"]) {
			element.css("color", "red");
		}
	}
});

myApp.filter("dayName", function () {
	var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
	return function (input) {
		return angular.isNumber(input) ? dayNames[input] : input;
	}
});

var now = new Date();
myApp.value("nowValue", now);

myApp.service("days", function (nowValue) {
	this.today = nowValue.getDay();
	this.tomorrow = this.today + 1;
});