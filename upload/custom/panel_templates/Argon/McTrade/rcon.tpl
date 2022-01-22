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
							<button class="btn btn-info" type="button" onclick="showAddModal()">{$ADD_NEW_SERVER} <i
									class="fa fa-plus-circle">
								</i></button>
						</div>
						<hr>
						{if count($SERVER_LIST)}
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									{foreach from=$SERVER_LIST item=server}
									<tr>
										<td>
											<strong><a href="{$server.send_rcon_link}">{$server.server_name}</strong>
										</td>
										<td>
											<div class="float-md-right">
												<a class="btn btn-warning btn-sm" href="{$server.edit_link}"><i
														class="fas fa-edit fa-fw"></i></a>
												<button class="btn btn-danger btn-sm" type="button"
													onclick="showDeleteModal('{$server.delete_link}')"><i
														class="fas fa-trash fa-fw"></i></button>
											</div>
										</td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
						{else}
						{$NO_SERVER}
						{/if}
					</section>


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
									<a href="#" id="deleteServer" class="btn btn-info">{$YES}</a>
								</div>
							</div>
						</div>
					</div>


					<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">{$ADD_NEW_SERVER}</h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form action="" method="post">
										<div class="form-group">
											<label for="ServerName">{$SERVER_NAME}</label>
											<input type="text" id="ServerName" name="server_name" class="form-control">
										</div>
										<div class="form-group">
											<label for="ServerIP">{$SERVER_IP}</label>
											<input type="text" id="ServerIP" name="server_ip" class="form-control">
										</div>
										<div class="form-group">
											<label for="ServerPort">{$SERVER_PORT}</label>
											<input type="text" id="ServerPort" name="server_port" class="form-control">
										</div>
										<div class="form-group">
											<label for="ServerPass">{$SERVER_PASS}</label>
											<input type="password" id="ServerPass" name="server_pass"
												class="form-control">
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
		</div>
		{include file='footer.tpl'}

		{include file='scripts.tpl'}

		<script type="text/javascript">
			function showDeleteModal(id) {
				$('#deleteServer').attr('href', id);
				$('#deleteModal').modal().show();
			}
		</script>

		<script type="text/javascript">
			function showAddModal() {
				$('#addServer').attr('href');
				$('#addModal').modal().show();
			}
		</script>

</body>

</html>