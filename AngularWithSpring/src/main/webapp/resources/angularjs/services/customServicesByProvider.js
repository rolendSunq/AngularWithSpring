/**
 *
 */
var app = angular.module('customServices', []);
app.provider('logServiceV2', function() {
	return {
		$get: function() {
			return {
				messageCount: 0,
				log: function(msg) {
					console.log('(LOG + ' + this.messageCount++ + ') ' + msg);
				}
			};
		}
	};
});