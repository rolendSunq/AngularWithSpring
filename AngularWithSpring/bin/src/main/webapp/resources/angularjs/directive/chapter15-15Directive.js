/**
 *
 */
var app = angular.module('exampleApp');
app.directive('demoDirective', function() {
	return function (scope, element, attrs) {
		var items = element.find('li');
		for (var i = 0; i < items.length; i++) {
			if (items.eq(i).text() == 'Oranges') {
				items.eq(i).css('font-weight', 'bold');
			} else {
				items.eq(i).css('font-weight', 'normal');
			}
		}
		console.log('Element count: ' + items.length);
		console.log('Font: ' + items.css('font-weight'));
	}
});