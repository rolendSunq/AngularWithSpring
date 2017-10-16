/**
 *
 */
var app = angular.module('exampleApp');
app.directive('triButton', function() {
	return {
		restrict: 'E',
		replace: true,
		require: 'ngModel',
		templateUrl: 'template/tri2Template',
		link: function(scope, element, attrs, ctrl) {
			var validateParser = function(value) {
				var valid = (value == 'Yes' || value == 'No');
				ctrl.$setValidity('confidence', valid);
				return valid ? value : undefined;
			};
			ctrl.$parsers.push(validateParser);
			element.on('click', function(event) {
				setSelected(event.target.innerText);
				scope.$apply(function() {
					ctrl.$setViewValue(event.target.innerText);
				});
			});
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
});