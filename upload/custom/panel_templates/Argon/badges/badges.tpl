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
						<a href="{$NEW_BDG_LINK}" class="btn btn-info" type="button">{$NEW_BADGES}
							</i></a>
					</div>
					<hr>
					{if count($BADGES_LIST)}
					<div class="table-responsive">
						<table class="table table-striped">
							<tbody>
								{foreach from=$BADGES_LIST item=badge}
								<tr>
									<td>
										<strong><a href="{$badge.edit_link}">{$badge.name}<strong
													class="float-md-right">{$POSTS}
													{$badge.require_posts}</strong></strong></a>
									</td>
									<td>
										<div class="float-md-right">
											<a class="btn btn-warning btn-sm" href="{$badge.edit_link}"><i
													class="nav-icon fas fa-edit fa-fw"></i></a>
											<button class="btn btn-danger btn-sm" type="button"
												onclick="showDeleteModal('{$badge.delete_link}')"><i
													class="nav-icon fas fa-trash fa-fw"></i></button>
										</div>
									</td>
								</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
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
			</div>
		</div>

		{include file='footer.tpl' }

		{include file='scripts.tpl' }

		<script type="text/javascript">
			function showDeleteModal(id) {
				$('#delete').attr('href', id);
				$('#deleteModal').modal().show();
			}
		</script>

</body>

</html>