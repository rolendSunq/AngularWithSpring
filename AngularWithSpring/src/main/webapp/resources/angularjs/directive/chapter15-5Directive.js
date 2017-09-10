/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return function (scope, element, attrs) {
		var data = scope[attrs['unorderedList']];
		if (angular.isArray(data)) {
			var listElem = angular.element('<ul>');
			element.append(listElem);
			for (var i = 0; i < data.length; i++) {
				listElem.append(angular.element('<li>').text(data[i].name));
			}
		}
	}
});