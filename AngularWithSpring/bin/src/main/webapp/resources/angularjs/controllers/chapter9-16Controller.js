/**
 * 
 */

var controllersModule = angular.module("exampleApp.Controllers", []);

controllersModule.controller("dayCtrl", function ($scope, days) {
	$scope.day = days.today;
});

controllersModule.controller("tomorrowCtrl", function ($scope, days) {
	$scope.day = days.tomorrow;
});

var myApp = angular.module("exampleApp", ["exampleApp.Controllers", "exampleApp.Filters", "exampleApp.Services", "exampleApp.Directives"]);

angular.module("exampleApp.Directives", []).directive("highlight", function ($filter) {
	var dayFilter = $filter("dayName");
	return function (scope, element, attrs) {
		if (dayFilter(scope.day) == attrs["highlight"]) {
			element.css("color", "red");
		}
	}
});

var now = new Date();
myApp.value("nowValue", now);

angular.module("exampleApp.Services", []).service("days", function (nowValue) {
	this.today = nowValue.getDay();
	this.tomorrow = this.today + 1;
});