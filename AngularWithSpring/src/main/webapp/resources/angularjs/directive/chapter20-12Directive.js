/**
 * 
 */
var app = angular.module('exampleApp');
app.directive('promiseWorker', function($q) {
	var deferred = $q.defer();
	return {
		link: function(scope, element, attrs) {
			element.find('button').on('click', function(event) {
				var buttonText = event.target.innerText;
				if (buttonText == 'Abort') {
					deferred.reject('Aborted');
				} else {
					deferred.resolve(buttonText);
				}
			});
		},
		controller: function($scope, $element, $attrs) {
			this.promise = deferred.promise;
		}
	}
});