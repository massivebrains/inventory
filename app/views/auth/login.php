<div class="row">
<?php $this->load->view('alert') ?>
	<div class="col-offset-md-3 col-md-6">
		<form action="<?=site_url('authentication') ?>" method="POST" role="form">
			<legend>Login Here</legend>
		
			<div class="form-group">
				<label for="">Email : <small><em>just use <strong>johndoe@domain.com </strong></em></small></label>
				<input type="email" class="form-control" id="" placeholder="johndoe.com" name="email">
			</div>

			<div class="form-group">
				<label for="">Password : <small><em>just use <strong>password </strong></em></small></label>
				<input type="password" class="form-control" id="" name="password">
			</div>

			<button type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>
</div>