/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return function(scope, element, attrs) {
		var data = scope[attrs['unorderedList']];
		var propertyExpression = attrs['listProperty'];
		if (angular.isArray(data)) {
			var listElem = angular.element('<ul>');
			element.append(listElem);
			for (var i = 0, dataLength = data.length; i < dataLength; i++) {
				var itemElement = angular.element('<li>').text(scope.$eval(propertyExpression, data[i]));
				listElem.append(itemElement);
			}
		}
	}
});