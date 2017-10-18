/**
 * 
 */
var app = angular.module('exampleApp');
app.directive('promiseWorker', function($q) {
	var deferred = [$q.defer(), $q.defer()];
	var promises = [deferred[0].promise, deferred[1].promise];
	return {
		link: function(scope, element, attrs) {
			element.find('button').on('click', function(event) {
				var buttonText = event.target.innerText;
				var buttonGroup = event.target.getAttribute('data-group');
				if (buttonText == 'Abort') {
					deferred[buttonGroup].reject('Aborted');
				} else {
					deferred[buttonGroup].resolve(buttonText);
				}
			});
		},
		controller: function($scope, $element, $attrs) {
			this.promise = $q.all(promises).then(function(result) {
				return result.join();
			});
		}
	}
});

app.directive('promiseObserver', function() {
	return {
		require: '^promiseWorker',
		link: function(scope, element, attrs, ctrl) {
			ctrl.promise.then(function(result) {
				element.text(result);
			}, function(reason) {
				element.text(reason);
			});
		}
	}
});