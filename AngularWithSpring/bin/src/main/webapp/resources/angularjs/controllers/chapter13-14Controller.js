/**
 *
 */
var app = angular.module('exampleApp', []);
app.controller('simpleCtrl', function() {
	this.dataValue = 'Hello Adam';
	this.reverseText = function() {
		this.dataValue = this.dataValue.split('').reverse().join('');
	}
});