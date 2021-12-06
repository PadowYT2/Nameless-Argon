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

						<div class="float-md">
							<button class="btn btn-info" type="button" onclick="showAddModal()">{$ADD_PAGE}
								</i></button>
						</div>
						<hr>
						{if count($PAGES_LIST)}
						<h4 class="text-center">{$PAGES}</h4>
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									{foreach from=$PAGES_LIST item=page}
									<tr>
										<td>
											<strong><a href="{$page.setting_link}">{$page.name}</strong>
										</td>
										<td>
											<div class="float-md-right">
												<a class="btn btn-info btn-sm" href="{$page.setting_link}"><i
														class="nav-icon fas fa-sliders-h fa-fw"></i></a>
												<a class="btn btn-warning btn-sm" href="{$page.edit_link}"><i
														class="nav-icon fas fa-edit fa-fw"></i></a>
												<button class="btn btn-danger btn-sm" type="button"
													onclick="showDeleteModal('{$page.delete_link}')"><i
														class="nav-icon fas fa-trash fa-fw"></i></button>
											</div>
										</td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
						{else}
						<h3 class="text-center">{$NO_PAGES}</h3>
						{/if}
					</section>
				</div>

				<!-- Modal Form -->
				<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">{$ARE_YOU_SURE}</h4>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								{$CONFIRM_DELETE}
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
								<a href="#" id="delete" class="btn btn-info">{$YES}</a>
							</div>
						</div>
					</div>
				</div>

				<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">{$ADD_PAGE}</h4>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="" method="post">
									<div class="form-group">
										<label for="Name">{$NAME}</label>
										<input type="text" id="Name" name="name" class="form-control">
									</div>
									<div class="form-group">
										<label for="Url">{$URL}</label>
										<input type="text" id="Url" name="url" class="form-control">
									</div>
									<div class="form-group">
										<input type="hidden" name="token" value="{$TOKEN}">
										<input type="submit" class="btn btn-info" value="{$SUBMIT}">
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

		<script type="text/javascript">
			function showDeleteModal(id) {
				$('#delete').attr('href', id);
				$('#deleteModal').modal().show();
			}
		</script>

		<script type="text/javascript">
			function showAddModal() {
				$('#add').attr('href');
				$('#addModal').modal().show();
			}
		</script>

</body>

</html>