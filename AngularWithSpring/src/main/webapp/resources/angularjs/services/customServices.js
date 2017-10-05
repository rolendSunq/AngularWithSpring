/**
 *
 */
var app = angular.module('customServices', []);
app.factory('logService', function() {
	var messageCount = 0;
	return {
		log: function(msg) {
			console.log('(LOG + ' + messageCount++ + ') ' + msg);
		}
	};
});