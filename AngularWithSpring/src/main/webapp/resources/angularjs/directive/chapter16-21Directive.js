/**
 *
 */
var app = angular.module('exampleApp');
app.directive('scopeDemo', function() {
	return {
		templateUrl: 'template/isolationTemplate',
		scope: {
			local: '@nameprop'
		}
	}
})