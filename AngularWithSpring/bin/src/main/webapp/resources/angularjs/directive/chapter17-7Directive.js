/**
 *
 */
var app = angular.module('exampleApp');
app.directive('triButton', function() {
	return {
		restrict: 'E',
		replace: true,
		require: 'ngModel',
		templateUrl: 'template/triTemplate',
		link: function(scope, element, attrs, ctrl) {
			var setSelected = function(value) {
				var buttons = element.find('button');
				buttons.removeClass('btn-primary');
				for(var i = 0; i < buttons.length; i++) {
					if (buttons.eq(i).text() == value) {
						buttons.eq(i).addClass('btn-primary');
					}
				}
			};
			ctrl.$render = function() {
				setSelected(ctrl.$viewValue || 'Not Sure');
			};
		}
	}
})