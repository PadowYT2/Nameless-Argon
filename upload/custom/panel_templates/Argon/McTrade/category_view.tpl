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
					<h1 class="text-white">{$TITLE}</h1>
				</div>
			</div>
		</div>

		<div class="container-fluid mt--8">
			<!-- Update Notification -->
			{include file='includes/update.tpl'}

			<div class="card">
				<div class="card-body">

					<section class="content">
						<!-- Success and Error Alerts -->
						{include file='includes/alerts.tpl'}

						<div class="col text-center">
							<div class="float-md">
								<a class="btn btn-success" href="{$NEW_PRODUCT_LINK}">{$ADD_PRODUCT} <i
										class="fa fa-plus-circle"></i></a>
								<a class="btn btn-warning" href="{$BACK_URL}">{$BACK} </a>
							</div>
						</div>
						<hr>

						{if count($PRODUCT_LIST)}
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									<div class="text-center text-info p-3">
										<h5><label>{$PRODUCTS}</label></h5>
									</div>
									{foreach from=$PRODUCT_LIST item=product}
									<tr>
										<td>
											<strong><a href="{$product.edit_link}">{$product.product_name}</a></strong>
										</td>
										<td>
											<div class="float-right form-inline">

												<a class="btn btn-info btn-sm mr-sm-2" href="{$product.copy_link}"><i
														class="far fa-copy"></i></a>
												<a class="btn btn-warning btn-sm mr-sm-2" href="{$product.edit_link}"><i
														class="fas fa-edit fa-fw"></i></a>


												<form action="" method="post">
													<div class="form-group mr-sm-2">
														<input type="hidden" name="token" value="{$TOKEN}">
														<input type="hidden" class="btn btn-info" name="delete_product"
															value="{$product.product_id}">
														<button class="btn btn-danger btn-sm" title="{$REMOVE}"
															type="button" data-toggle="modal"
															data-target="#confirm{$product.product_id}"><i
																class="fas fa-trash fa-fw"></i></button>
													</div>

													<!-- Delete confirm modal -->
													<div class="modal fade" id="confirm{$product.product_id}"
														tabindex="-1" role="dialog">
														<div class="modal-dialog" role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h2 class="modal-title">{$ARE_YOU_SURE}</h2>
																</div>
																<div class="modal-body">
																	<p>{$CONFIRM_DELETE}</p>
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-danger"
																		data-dismiss="modal">{$NO}</button>
																	<button type="submit"
																		class="btn btn-success">{$YES}</button>
																</div>
															</div>
														</div>
													</div>

												</form>

											</div>
										</td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
						{else}
						{$NO_PRODUCT}
						{/if}
					</section>
				</div>
			</div>
		</div>
		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>