/**
 *
 */
var app = angular.module('exampleApp');
app.directive('productItem', function(){
	return {
		templateUrl: 'template/productTemplate'
	}
});
app.directive('productTable', function() {
	return {
		transclude: true,
		scope: {
			value: '=productTable',
			data: '=productData'
		}
	}
});