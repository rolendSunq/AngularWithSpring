var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return function (scope, element, attrs) {
		var data = scope[attrs['unorderedList']];
		var propertyExpression = attrs['listProperty'];

		if (angular.isArray(data)) {
			var listElem = angular.element('<ul>');
			element.append(listElem);
			for (var i = 0; i < data.length; i++) {
				var itemElement = angular.element('<li>');
				listElem.append(itemElement);
				var watcherFn = function(watchScope) {
					return watchScope.$eval(propertyExpression, data[i]);
				};
				scope.$watch(watcherFn, function(newValue, oldValue) {
					itemElement.text(newValue);
				});

			}
		}
	}
});