/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return function (scope, element, attrs) {
		var data = scope[attrs['unorderedList']];
		var propertyExpression = attrs['listProperty'];
		if (angular.isArray(data)) {
			var listElem = angular.element('<ul>');
			element.append(listElem);
			for (var i = 0; i < data.length; i++) {
				listElem.append(angular.element('<li>').text(scope.$eval(propertyExpression, data[i])));
			}
		}
	}
});