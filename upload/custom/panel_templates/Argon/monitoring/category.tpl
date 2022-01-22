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
					<h1 class="text-white">{$CATEGORY_HEAD}</h1>
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
									onclick="showAddModal('Version')">{$ADD_VERSION_LABEL}
									<i class="fa fa-plus-circle">
									</i></button>
								<button class="btn btn-success" type="button"
									onclick="showAddModal('Category')">{$ADD_CATEGORY_LABEL}
									<i class="fa fa-plus-circle">
									</i></button>
							</div>
						</div>
						<hr>





						<h3 class="text-center">{$VERSION_LABEL}:</h3>

						{foreach from=$VERSION item=product}

						<div class="card mb-3">
							<div class="card-header">
								<h5 class="mb-0">
									<button class="btn btn-link">
										{$product.name}
									</button>
									<div class="float-right">
										<div class="btn-group">
											<button class="btn mr-sm-2 btn-sm btn-warning" type="button"
												data-toggle="modal" data-target="#edit_ver{$product.id}"><i
													class="fas fa-edit fa-fw"></i></button>
											<button class="btn mr-sm-2 btn-sm btn-danger" type="button"
												data-toggle="modal" data-target="#delete_ver{$product.id}"><i
													class="fas fa-trash fa-fw"></i></button>
										</div>
									</div>
								</h5>
							</div>
						</div>

						<!-- Edite modal -->
						<div class="modal fade" id="edit_ver{$product.id}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<form action="" id="edite_ver{$product.id}" method="post">
										<div class="modal-body">
											<label>{$NAME_LABEL}?</label>
											<input type="text" class="form-control" name="name" value="{$product.name}">

											<input type="hidden" name="table" value="versions">
											<input type="hidden" name="token" value="{$TOKEN}">
											<input type="hidden" name="update_product" value="1">
											<input type="hidden" name="id_product" value="{$product.id}">
											<div class="modal-footer">
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">{$CANCEL_LABEL}</button>
												<button type="submit" form="edite_ver{$product.id}"
													class="btn btn-success">{$SUBMIT_LABEL}</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!-- Delete modal -->
						<div class="modal fade" id="delete_ver{$product.id}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-body">
										<p>{$CONFIRM_DELETE_LABEL}</p>
										<form action="" id="delete_vers{$product.id}" method="post">
											<input type="hidden" name="token" value="{$TOKEN}">
											<input type="hidden" name="delete_product" value="{$product.id}">
											<input type="hidden" name="table" value="versions">
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger" data-dismiss="modal">{$NO}</button>
										<button type="submit" form="delete_vers{$product.id}"
											class="btn btn-success">{$YES}</button>
									</div>
								</div>
							</div>
						</div>


						{/foreach}


						<h3 class="text-center">{$CATEGORY_LABEL}:</h3>

						{foreach from=$CATEGORY item=product}

						<div class="card mb-3">
							<div class="card-header">
								<h5 class="mb-0">
									<button class="btn btn-link">
										{$product.name}
									</button>
									<div class="float-right">
										<div class="btn-group">
											<button class="btn mr-sm-2 btn-sm btn-warning" type="button"
												data-toggle="modal" data-target="#edit_cat{$product.id}"><i
													class="fas fa-edit fa-fw"></i></button>
											<button class="btn mr-sm-2 btn-sm btn-danger" type="button"
												data-toggle="modal" data-target="#delete_cat{$product.id}"><i
													class="fas fa-trash fa-fw"></i></button>
										</div>
									</div>

								</h5>
							</div>
						</div>

						<!-- Edite modal -->
						<div class="modal fade" id="edit_cat{$product.id}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<form action="" id="edite{$product.id}" method="post">
										<div class="modal-body">
											<label>{$NAME_LABEL}?</label>
											<input type="text" class="form-control" name="name" value="{$product.name}">

											<input type="hidden" name="table" value="category">
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
						<div class="modal fade" id="delete_cat{$product.id}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-body">
										<p>{$CONFIRM_DELETE_LABEL}</p>
										<form action="" id="delete{$product.id}" method="post">
											<input type="hidden" name="token" value="{$TOKEN}">
											<input type="hidden" name="delete_product" value="{$product.id}">
											<input type="hidden" name="table" value="category">
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




					<div class="modal fade" id="addModalVersion" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">

								<form action="" method="post">
									<div class="modal-body">
										<label>{$NAME_LABEL}?</label>
										<input type="text" class="form-control" name="name" value="">

										<input type="hidden" name="table" value="versions">
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

					<div class="modal fade" id="addModalCategory" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<form action="" method="post">
									<div class="modal-body">
										<label>{$NAME_LABEL}?</label>
										<input type="text" class="form-control" name="name" value="">

										<input type="hidden" name="table" value="category">
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
	function showAddModal(value) {
		$('#addModal' + value).modal().show();
	}
</script>