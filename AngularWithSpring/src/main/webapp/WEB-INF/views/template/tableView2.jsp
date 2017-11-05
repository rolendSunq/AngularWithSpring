<div class="panel-body">
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Name</th>
				<th>Category</th>
				<th class="text-right">Price</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="item in products">
				<td>{{item.name}}</td>
				<td>{{item.category}}</td>
				<td class="text-right">{{item.price | currency}}</td>
				<td class="text-center">
					<button class="btn btn-xs btn-primary" ng-click="deleteProduct(item)">Delete</button>
					<a href="/edit/{{item.id}}" class="btn btn-xs btn-primary">Edit</a>
					<increment item="item" property-name="price" restful="true" method-name="$save" />
				</td>
			</tr>
		</tbody>
	</table>
	<div>
		<button class="btn btn-primary" ng-click="listProducts()">Refresh</button>
		<button class="btn btn-primary" ng-click="editOrCreateProduct()">New</button>
	</div>
</div>