/**
 * 
 */

var myApp = angular.module("exampleApp", []);

myApp.controller("dayCtrl", function ($scope) {
	var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
	$scope.day = dayNames[new Date().getDay()];
	$scope.tomorrow = dayNames[(new Date().getDay() + 1) % 7];
});



/*
var controllersModule = angular.module("exampleApp.Controllers", []);

controllersModule.controller("dayCtrl", function ($scope, days) {
    $scope.day = days.today;

});

controllersModule.controller("tomorrowCtrl", function ($scope, days) {
    $scope.day = days.tomorrow;
});
*/