/**
 *
 */
var app = angular.module('exampleApp');
app.directive('panel', function() {
	return {
		link: function(scope, element, attrs) {
			scope.dataSource = 'directive';
		},
		restrict: 'E',
		scope: true,
		templateUrl: 'template/transclusionTemplate',
		transclude: true
	}
})