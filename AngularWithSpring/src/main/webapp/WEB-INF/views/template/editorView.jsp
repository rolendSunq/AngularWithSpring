<div class="panel-body">
	<div class="form-group">
		<label>Name: </label>
		<input type="text" class="form-control" ng-model="currentProduct.name" />
	</div>
	<div class="form-group">
		<label>Category: </label>
		<input type="text" class="form-control" ng-model="currentProduct.category" />
	</div>
	<div class="form-group">
		<label>Price: </label>
		<input type="text" class="form-control" ng-model="currentProduct.price" />
	</div>
	<button class="btn btn-primary" ng-click="saveEdit(currentProduct)">Save</button>
	<button class="btn btn-primary" ng-click="cancelEdit()">Cancel</button>
</div>