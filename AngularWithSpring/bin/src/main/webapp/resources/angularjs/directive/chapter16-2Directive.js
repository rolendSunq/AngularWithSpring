/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return {
		link: function(scope, element, attrs) {
			var data = scope[attrs['unorderedList'] || attrs['listSource']];
			var propertyExpression = attrs['listProperty'] || 'price | currency';
			if (angular.isArray(data)) {
				var listElem = angular.element('<ul>');
				if (element[0].nodeName == '#comment') {
					element.parent().append(listElem);
				} else {
					element.append(listElem);
				}

				for (var i = 0, dataLength = data.length; i < dataLength; i++) {
					var itemElement = angular.element('<li>').text(scope.$eval(propertyExpression, data[i]));
					listElem.append(itemElement);
				}
			}
		},
		restrict: 'EACM'
	}
});