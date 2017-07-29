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
	$scope.viewFile = function () {
		return $scope.showList ? "/spring/resources/angularjs/components/table/list.html" : "/spring/resources/angularjs/components/table/table.html";
	};
});
