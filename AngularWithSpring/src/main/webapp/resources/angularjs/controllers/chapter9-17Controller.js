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
myApp.constant("startTime", new Date().toLocaleTimeString());
myApp.config(function (startTime) {
	console.log("Main module config: " + startTime);
});
myApp.run(function(startTime) {
	console.log("Main module run: " + startTime);
});

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
}).config(function() {
	console.log("Services module config: (no time)");
}).run(function(startTime) {
	console.log("Services module run: " + startTime);
});
