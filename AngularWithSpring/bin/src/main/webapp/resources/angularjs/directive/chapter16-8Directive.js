/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return {
		link: function(scope, element, attrs) {
			scope.data = scope[attrs['unorderedList']];
		},
		restrict: 'A',
		template: function () {
			return angular.element(document.querySelector('#listTemplate')).html();
		}
	}
});