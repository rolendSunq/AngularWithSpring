/**
 * 
 */
angular.module('exampleApp', []).controller('defaultCtrl', function ($scope) {
	$scope.todos = [
		{action: "Get groceries", complete: false},
		{action: "Call plumber", complete: false},
		{action: "Buy running shoes", complete: true},
		{action: "Buy flowers", complete: false},
		{action: "Call family", complete: false}
	];
	
	$scope.addNewItem = function (newItem) {
		$scope.todos.push({
			action: newItem.action + " (" + newItem.location + ") ", 
			complete: false
		});
	}
});