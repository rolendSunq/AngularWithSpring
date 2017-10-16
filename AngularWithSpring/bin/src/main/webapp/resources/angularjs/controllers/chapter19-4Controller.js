/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('defaultCtrl', function($scope, $location) {
	$scope.$on('$locationChangeSuccess', function(event, newUrl) {
		$scope.url = newUrl;
	});
	$scope.setUrl = function(component) {
		switch (component) {
		case 'reset':
			$location.path('');
			$location.hash('');
			$location.search('');
			break;
		case 'path':
			$location.path('/cities/london');
			break;
		case 'hash':
			$location.hash('north');
			break;
		case 'search':
			$location.search('select', 'hotels');
			break;
		case 'url':
			$location.url('/cities/london?select=hotels#north');
			break;
		}
	};
});