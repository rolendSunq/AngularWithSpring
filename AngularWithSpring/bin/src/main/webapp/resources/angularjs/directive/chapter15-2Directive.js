/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return function(scope, element, attrs) {
		var data = scope[attrs['unorderedList']];
		if (angular.isArray(data)) {
			for (var i = 0; i < data.length; i++) {
				console.log('Item: ' + data[i].name);
			}
		}
	}
});