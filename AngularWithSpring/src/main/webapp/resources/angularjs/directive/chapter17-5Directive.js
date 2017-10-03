/**
 *
 */
var app = angular.module('exampleApp');
app.directive('productItem', function(){
	return {
		templateUrl: 'template/productTemplate',
		require: '^productTable',
		link: function(scope, element, attrs, ctrl) {
			scope.$watch('item.quantity', function() {
				ctrl.updateTotal();
			});
		}
	}
});
app.directive('productTable', function() {
	return {
		transclude: true,
		scope: {
			value: '=productTable',
			data: '=productData'
		},
		controller: function($scope, $element, $attrs) {
			this.updateTotal = function() {
				var total = 0;
				for (var i = 0; i < $scope.data.length; i++) {
					total += Number($scope.data[i].quantity);
				}
				$scope.value = total;
			}
		}
	}
});
app.directive('resetTotals', function() {
	return {
		scope: {
			data: '=productData',
			propname: '@propertyName'
		},
		templateUrl: 'template/resetTemplate',
		require: '^productTable',
		link: function(scope, element, attrs, ctrl) {
			scope.reset = function() {
				for (var i = 0; i < scope.data.length; i++) {
					scope.data[i][scope.propname] = 0;
				}
				ctrl.updateTotal();
			}
		}
	}
});