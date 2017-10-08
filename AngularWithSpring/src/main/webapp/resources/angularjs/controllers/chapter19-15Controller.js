/**
 *
 */
var app = angular.module('exampleApp', ['ngSanitize']);
app.controller('defaultCtrl', ['$scope', '$sce', function($scope, $sce) {
	$scope.htmlData = "<p>This is <b onmouseover=alert('Attack!')>dangerous</b> data</p>";
	$scope.deliberatelyTrustDangerousSnippet = function() {
        return $sce.trustAsHtml($scope.snippet);
    };
}]);
