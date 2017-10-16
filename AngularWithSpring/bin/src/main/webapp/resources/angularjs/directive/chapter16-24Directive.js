/**
 *
 */
var app = angular.module('exampleApp');
app.directive('scopeDemo', function() {
	return {
		templateUrl: 'template/expressionTemplate',
		scope: {
			local: '=nameprop',
			cityFn: '&city'
		}
	}
})