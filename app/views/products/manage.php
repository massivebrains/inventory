<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">products  <span class="label label-success"><?=DB::num_rows(TABLE_PRODUCTS) ?></span> 
					
				</h3>
			</div>
			<div class="panel-body">
				<?php $this->load->view('alert') ?>
				<button type="button" class="btn btn-primary pull-left" onclick="edit_product(0)">Add New</button>
				<br/><br/>
				<table class="table table-striped table-hover" id="datatable">
					<thead>
						<tr>
							<th>S/NO</th>
							<th>Product Name</th>
							<th>Product Price</th>
							<th>Category</th>
							<th>Last Updated</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php if($products): ?>
							<?php $count = 1; ?>
							<?php foreach($products as $row): ?>
								<tr>
									<td><?=$count++ ?></td>
									<td id="product_name-<?=$row->product_id ?>"><?=ucfirst($row->product_name) ?></td>
									<td id="product_price-<?=$row->product_id ?>">&#8358;  <?=number_format($row->product_price,2) ?></td>
									<td>
										<span id="category_id-<?=$row->category_id ?>" style="display:none;"><?=$row->category_id ?></span>
										<?=ucfirst($row->category_name) ?>

									</td>
									<td><?=$row->updated_at ?></td>
									<td>
										<div class="btn-group">
											<button type="button" class="btn btn-default dropdown-toggle waves-effect" data-toggle="dropdown" aria-expanded="true"> Dropdown <span class="caret"></span> </button>
											<ul class="dropdown-menu">
												<li><a href="javascript:void(0);" onclick="edit_product('<?=$row->product_id ?>')">Edit</a></li>
												<li><a href="<?=site_url('products/delete/'.$row->product_id)?>" onclick="return confirm('Are you sure?')">Delete</a></li>
											</ul>
										</div>
									</td>
								</tr>
							<?php endforeach; ?>
						<?php endif; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="modal">
	<div class="modal-dialog">
		<?=form_open('products/manage') ?>
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Add New product</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label for="">product Name</label>
					<input type="text" name="product_name" id="product_name" class="form-control" value="<?=set_value('product_name') ?>" required>
				</div>

				<div class="form-group">
					<label for="">product Price</label>
					<input type="text" name="product_price" id="product_price" class="form-control" value="<?=set_value('product_price') ?>" required>
				</div>

				<div class="form-group">
					<label>Category</label>
					<select name="category_id" id="category_id" class="form-control" required>
						<option value="">--select--</option>
						<?php foreach(DB::get(TABLE_CATEGORIES) as $row): ?>
							<option value="<?=$row->category_id ?>"><?=ucfirst($row->category_name) ?></option>
						<?php endforeach; ?>
					</select>
				</div>
			</div>
			<input type="hidden" name="product_id" id="product_id">
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save</button>
			</div>
		</div>
		<?=form_close() ?>
	</div>
</div>