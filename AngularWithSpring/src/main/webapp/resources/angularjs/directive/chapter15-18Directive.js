/**
 *
 */
var app = angular.module('exampleApp');
app.directive('demoDirective', function() {
	return function (scope, element, attrs) {
		var listElem = angular.element('<ol>');
		element.append(listElem);
		var namesLength = scope.names.length;
		for (var i = 0; i < namesLength; i++) {
			listElem.append(angular.element('<li>').append(angular.element('<span>').text(scope.names[i])));
		}
	}
});