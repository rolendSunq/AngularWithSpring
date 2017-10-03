<div class="well">
	<div class="btn-group">
		<button class="btn btn-default">Yes</button>
		<button class="btn btn-default">No</button>
		<button class="btn btn-default">Not Sure</button>
	</div>
	<span class="error" ng-show="myForm.decision.$error.confidence">You need to be sure</span>
</div>