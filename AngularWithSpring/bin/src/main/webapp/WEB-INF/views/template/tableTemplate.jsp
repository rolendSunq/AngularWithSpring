<table>
	<thead>
		<tr>
			<th>name</th>
			<th>price</th>
		</tr>
	</thead>
	<tbody>
		<tr ng-repeat="item in data">
			<td>{{item.name}}</td>
			<td>{{item.price | currency}}</td>
		</tr>
	</tbody>
</table>