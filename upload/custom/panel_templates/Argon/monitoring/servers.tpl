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
					<h1 class="text-white">{$PAGE_TITLE}</h1>
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

						{foreach from=$SERVERS_LIST item=server}

						<div class="card mb-3">
							<div class="card-header">
								<h5 class="mb-0">
									<button class="btn btn-link">
										{$server->name}
									</button>
									<div class="float-right">


										<div class="btn-group">
											<a href="{$EDIT_URL}{$server->id}" class="btn mr-sm-2 btn-sm btn-warning"><i
													class="fas fa-edit fa-fw"></i></a>
											<button class="btn mr-sm-2 btn-sm btn-danger" type="button"
												data-toggle="modal" data-target="#delete_modal{$server->id}"><i
													class="fas fa-trash fa-fw"></i></button>
										</div>
									</div>

								</h5>
							</div>
						</div>

						<!-- Delete modal -->
						<div class="modal fade" id="delete_modal{$server->id}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-body">
										<p>{$CONFIRM_DELETE_LABEL}</p>
										<form action="" id="delete{$server->id}" method="post">
											<input type="hidden" name="token" value="{$TOKEN}">
											<input type="hidden" name="delete_server" value="{$server->id}">
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger" data-dismiss="modal">{$NO}</button>
										<button type="submit" form="delete{$server->id}"
											class="btn btn-success">{$YES}</button>
									</div>
								</div>
							</div>
						</div>

						{/foreach}

						{$PAGINATION}

					</section>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>