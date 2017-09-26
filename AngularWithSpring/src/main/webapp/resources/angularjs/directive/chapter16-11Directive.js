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
		templateUrl: function(elem, attrs) {
			return attrs['template'] == 'table' ? 'template/tableTemplate' : 'template/itemTemplate';
		}
	}
});