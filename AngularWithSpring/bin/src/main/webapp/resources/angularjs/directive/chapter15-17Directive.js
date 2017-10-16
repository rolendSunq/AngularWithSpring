/**
 *
 */
var app = angular.module('exampleApp');
app.directive('demoDirective', function() {
	return function (scope, element, attrs) {
		var listElem = element.append('<ol>');
		var namesLength = scope.names.length;
		for (var i = 0; i < namesLength; i++) {
			listElem.append('<li>').append('<span>').text(scope.names[i]);
		}
	}
});