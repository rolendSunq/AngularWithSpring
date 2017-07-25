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
	$scope.buttonNames = ['Red', 'Green', 'Blue'];
	$scope.settings = {Rows: 'Red', Columns: 'Green'};
	$scope.data = {rowColor: 'Blue', columnColor: 'Green'};
	$scope.handleEvent = function (e) {
		console.log('Event type: ' + e.type);
		$scope.data.columnColor = e.type == 'mouseover' ? 'Green' : 'Blue';
	};
});