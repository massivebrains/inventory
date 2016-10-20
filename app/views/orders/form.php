<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<button type="button" class="btn btn-info btn-sm" onclick="add_tr()">Add Row</button>
		<?=form_open('orders/create') ?>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Product</th>
					<th>Qty</th>
					<th>Action</th>
				</tr>
			</thead>
			
			<tbody id="tbody">
				<tr id="1">
					<td>
						<select name='products[]' class="form-control" required="required">
							<?php foreach(DB::get(TABLE_PRODUCTS) as $row): ?>
								<option value="<?=$row->product_id ?>"><?=ucfirst($row->product_name) ?> - <?=$row->product_price ?></option>
							<?php endforeach; ?>
						</select>
					</td>
					<td>
						<input type="text" name='qty[]' class="form-control inputqty" required value="1">
					</td>
					<td>
						<button type="button" class="btn btn-danger btn-sm" onclick="remove_tr(1)" id="b">Delete</button>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type="text" name='customer_name' class="form-control" required placeholder="Customer Name">
					</td>
					<td ><button type="submit" class="btn btn-success">Submit</button></td>
				</tr>
			</tfoot>
		</table>
		<?=form_close() ?>
	</div>
</div>
<script>
	var tr = "<?=$tr ?>";
</script>