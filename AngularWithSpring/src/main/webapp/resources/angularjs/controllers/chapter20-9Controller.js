/**
 * 
 */
var app = angular.module('exampleApp', []);
app.config({
	function($httpProvider) {
		$httpProvider.defaults.transformResponse.push(function(data, headers) {
			if (headers('content-type') == 'application/xml' && angular.isString(data)) {
				products = [];
				var productElems = angular.element(data.trim()).find('product');
				for (var i = 0; i < productElems.length; i++) {
					var product = productElems.eq(i);
					products.push({
						name: product.attr('name'),
						category: product.attr('category'),
						price: product.attr('price')
					});
				}
			}
		});
	}
});
app.controller('defaultCtrl', function($scope, $http) {
	$scope.loadData = function() {
		$http.get('productData.xml').then(function(data){
			$scope.products = data;
		});
	}
});