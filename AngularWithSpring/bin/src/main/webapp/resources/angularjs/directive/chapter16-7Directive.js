/**
 *
 */
var app = angular.module('exampleApp');
app.directive('unorderedList', function() {
	return {
		link: function (scope, element, attrs) {
			scope.data = scope[attrs['unorderedList']];
		},
		restrict: 'A',
		template: '<ul><li ng-repeat="item in data">'
			+ '{{item.price | currency}}</li></ul>'
	}
});