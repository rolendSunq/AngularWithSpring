/**
 * 
 */
angular.module("exampleApp", []).controller("defaultCtrl", function ($scope) {
	$scope.todos = [
		{action: "Get groceries", complete: false},
		{action: "Call plumber", complete: false},
		{action: "Buy running shoes", complete: true},
		{action: "Buy flowers", complete: false},
		{action: "Call family", complete: false}
	];
	$scope.buttonNames = ['Red', 'Green', 'Blue'];
	$scope.settings = {Rows: 'Red', Columns: 'Green'};
});