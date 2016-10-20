<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Categories <span class="label label-success"><?=DB::num_rows(TABLE_CATEGORIES) ?></span> 
				</h3>

			</div>
			<div class="panel-body">
			<?php $this->load->view('alert') ?>
			<button type="button" class="btn btn-primary pull-left" onclick="edit_category(0)">Add New</button>
			<br/><br/>
				<table class="table table-striped table-hover" id="datatable">
					<thead>
						<tr>
							<th>S/NO</th>
							<th>Name</th>
							<th>Last Updated</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php if($categories): ?>
						<?php $count = 1; ?>
					<?php foreach($categories as $row): ?>
						<tr>
							<td><?=$count++ ?></td>
							<td id="name-<?=$row->category_id ?>"><?=ucfirst($row->category_name) ?></td>
							<td><?=$row->updated_at ?></td>
							<td>
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle waves-effect" data-toggle="dropdown" aria-expanded="true"> Dropdown <span class="caret"></span> </button>
									<ul class="dropdown-menu">
										<li><a href="javascript:void(0);" onclick="edit_category('<?=$row->category_id ?>')">Edit</a></li>
										<li><a href="<?=site_url('categories/delete/'.$row->category_id)?>" onclick="return confirm('Are you sure?')">Delete</a></li>
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
		<?=form_open('categories/manage') ?>
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Add New Category</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label for="">Category Name</label>
					<input type="text" name="category_name" id="name" class="form-control" value="<?=set_value('name') ?>" required>
				</div>
			</div>
			<input type="hidden" name="category_id" id="category_id">
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save</button>
			</div>
		</div>
		<?=form_close() ?>
	</div>
</div>