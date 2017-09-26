/**
 *
 */
var app = angular.module('exampleApp');
app.directive('scopeDemo', function() {
	return {
		template: '<div class="panel-body">' +
			'<div class="form-inline">' +
			'<label for="inputName" class="form-label">Name:</label>' +
			'<input id="inputName" class="form-control" ng-model="name" />' +
			'</div>' +
			'</div>'
	}
});