/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return function (scope, element, attrs) {
		var data = scope[attrs['unorderedList']];
		var propertyExpression = attrs['listProperty'];
		if (angular.isArray(data)) {
			var listElem = angular.element('<ul>').appendTo(element);
			var productsLength = scope.products.length;
			for (var i = 0; i < productsLength; i++) {
				(function(){
					var index = i;
					var itemElement = angular.element('<li>').appendTo(listElem);
					var watcherFn = function(watchScope) {
						return watchScope.$eval(propertyExpression, data[index]);
					}
					scope.$watch(watcherFn, function(newValue, oldValue) {
						itemElement.text(newValue);
					});
				})();
			}
		}
	}
});