/**
 *
 */
var app = angular.module('exampleApp');
app.directive('evalExpression', function($parse) {
	return function(scope, element, attrs) {
		scope.$watch(attrs['evalExpression'], function(newValue) {
			try {
				var expressionFn = $parse(scope.expr);
				var result = expressionFn(scope);
				if (result == undefined) {
					result = 'No result';
				}
			} catch(err) {
				result = 'Cannot evaluate expression';
			}
			element.text(result);
		});
	}
});