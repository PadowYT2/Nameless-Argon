{include file='header.tpl'}

<body>

	<!-- Sidebar -->
	{include file='sidebar.tpl'}

	<div class="main-content">
		{include file='navbar.tpl'}

		<!-- Header -->
		<div class="header bg-gradient-info pb-9 pt-5 pt-md-7">
			<div class="container-fluid">
				<div class="header-body">
					<h1 class="text-white">{$PERMISSION_LABEL}</h1>
				</div>
			</div>
		</div>

		<div class="container-fluid mt--8">
			<!-- Update Notification -->
			{include file='includes/update.tpl'}

			<div class="card">
				<div class="card-body">
					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<section class="content">

						<div class="col text-center">
							<div class="float-md">
								<button class="btn btn-success" type="button"
									onclick="showAddModal()">{$ADD_PERMISSION_LABEL} <i class="fa fa-plus-circle">
									</i></button>
							</div>
						</div>
						<hr>


						{foreach from=$PERMISION_LIST item=product}

						<div class="card mb-3">
							<div class="card-header">
								<h5 class="mb-0">
									<button class="btn btn-link" data-toggle="collapse"
										data-target="#collapse{$product.id}" aria-expanded="true">
										{$product.name}
									</button>
									<div class="float-right">


										<div class="btn-group">
											<button class="btn mr-sm-2 btn-sm btn-warning" type="button"
												data-toggle="modal" data-target="#edit_modal{$product.id}"><i
													class="fas fa-edit fa-fw"></i></button>
											<button class="btn mr-sm-2 btn-sm btn-danger" type="button"
												data-toggle="modal" data-target="#delete_modal{$product.id}"><i
													class="fas fa-trash fa-fw"></i></button>
										</div>
									</div>

								</h5>
							</div>
						</div>

						<!-- Edite modal -->
						<div class="modal fade" id="edit_modal{$product.id}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<form action="" id="edite{$product.id}" method="post">
										<div class="modal-body">
											<label>{$NAME_LABEL}?</label>
											<input type="text" class="form-control" name="name" value="{$product.name}">

											<label>{$SERVER_LIMIT_LABEL}</label>
											<input type="number" class="form-control" name="server_limit"
												value="{$product.server_limit}">

											<input type="hidden" name="token" value="{$TOKEN}">
											<input type="hidden" name="update_product" value="1">
											<input type="hidden" name="id_product" value="{$product.id}">

											<div class="modal-footer">
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">{$CANCEL_LABEL}</button>
												<button type="submit" form="edite{$product.id}"
													class="btn btn-success">{$SUBMIT_LABEL}</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!-- Delete modal -->
						<div class="modal fade" id="delete_modal{$product.id}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-body">
										<p>{$CONFIRM_DELETE_LABEL}</p>
										<form action="" id="delete{$product.id}" method="post">
											<input type="hidden" name="token" value="{$TOKEN}">
											<input type="hidden" name="delete_product" value="{$product.id}">
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger" data-dismiss="modal">{$NO}</button>
										<button type="submit" form="delete{$product.id}"
											class="btn btn-success">{$YES}</button>
									</div>
								</div>
							</div>
						</div>

						{/foreach}

					</section>




					<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">

								<form action="" method="post">
									<div class="modal-body">
										<label>{$NAME_LABEL}?</label>
										<input type="text" class="form-control" name="name" value="">

										<label>{$SERVER_LIMIT_LABEL}</label>
										<input type="number" class="form-control" name="server_limit" value="">

										<input type="hidden" name="token" value="{$TOKEN}">
										<input type="hidden" name="create_product" value="1">

										<div class="modal-footer">
											<button type="button" class="btn btn-danger"
												data-dismiss="modal">{$CANCEL_LABEL}</button>
											<button type="submit" class="btn btn-success">{$SUBMIT_LABEL}</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>



<script type="text/javascript">
	function showAddModal() {
		$('#addModal').modal().show();
	}
</script>