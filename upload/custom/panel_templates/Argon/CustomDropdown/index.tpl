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
					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}
					<div class="float-md">
						<button class="btn btn-info" type="button" onclick="showAddModal()">{$ADD_NEW_DROPDOWN} <i
								class="fa fa-plus-circle">
							</i></button>
					</div>
					<hr>
					{if count($DROPDOWN_LIST)}
					<div class="table-responsive">
						<table class="table table-striped">
							<tbody>
								{foreach from=$DROPDOWN_LIST item=dropdown}
								<tr>
									<td>
										<strong>{$dropdown.dropdown_title}</strong>
									</td>
									<td>
										<div class="float-md-right">

											{if $dropdown.enabled == 1}
											<a class="btn btn-danger btn-sm" title="{$DISABLE}"
												href="{$dropdown.enabled_link}"><i class="fa fa-toggle-off"
													aria-hidden="true"></i></a>
											{else}
											<a class="btn btn-success btn-sm" title="{$ENABLE}"
												href="{$dropdown.enabled_link}"><i class="fa fa-toggle-on"
													aria-hidden="true"></i></a>
											{/if}
											<a class="btn btn-info btn-sm" title="{$SETTINGS}"
												href="{$dropdown.setting_link}"><i class="fa fa-cogs"
													aria-hidden="true"></i></a>
											<a class="btn btn-warning btn-sm" title="{$EDIT}"
												href="{$dropdown.edit_link}"><i class="fas fa-edit fa-fw"></i></a>
											<button class="btn btn-danger btn-sm" title="{$REMOVE}" type="button"
												onclick="showDeleteModal('{$dropdown.delete_link}')"><i
													class="fas fa-trash fa-fw"></i></button>
										</div>
									</td>
								</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
					{else}
					{$NO_DROPDOWN}
					{/if}
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
								<a href="#" id="deleteDropdown" class="btn btn-danger">{$YES}</a>
							</div>
						</div>
					</div>
				</div>


				<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">{$ADD_NEW_DROPDOWN}</h4>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="" method="post">
									<div class="form-group">
										<label for="DropdownTitle">{$DROPDOWN_TITLE}</label>
										<input type="text" id="DropdownTitle" name="dropdown_title"
											class="form-control">
									</div>
									<div class="form-group">
										<label for="DropdownLocation">{$DROPDOWN_LOCATION}</label>
										<select class="form-control" id="DropdownLocation" name="dropdown_location">
											<option value="1">top</option>
											<option value="2">footer</option>
										</select>
									</div>
									<div class="form-group">
										<label for="DropdownIcon">{$DROPDOWN_ICON}</label>
										<input type="text" id="DropdownIcon" name="dropdown_icon" class="form-control">
									</div>
									<div class="form-group">
										<label for="DropdownOrder">{$DROPDOWN_ORDER}</label>
										<input type="text" id="DropdownOrder" name="dropdown_order"
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
		{include file='footer.tpl'}


		{include file='scripts.tpl'}

		<script type="text/javascript">
			function showDeleteModal(id) {
				$('#deleteDropdown').attr('href', id);
				$('#deleteModal').modal().show();
			}
		</script>

		<script type="text/javascript">
			function showAddModal() {
				$('#addDropdown').attr('href');
				$('#addModal').modal().show();
			}
		</script>

</body>

</html>