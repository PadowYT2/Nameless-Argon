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
					<button class="btn btn-success" type="button" onclick="showAddModal()"><i class="fa fa-plus-circle">
						</i></button>
					<hr>
					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					{foreach from=$POLLS item=poll key=key name=name}
					<div class="card mb-3">
						<div class="card-header">
							<h5 class="mb-0">
								<a href="{$VIEW_URL}{$poll->id}" class="btn btn-link">
									{$poll->subject}
								</a>
								<div class="float-right">

									{if $poll->status == 1}
									<button type="submit" form="status{$poll->id}"
										class="btn mr-sm-2 btn-sm btn-success"><i class="fas fa-toggle-on"></i></button>
									{else}
									<button type="submit" form="status{$poll->id}"
										class="btn mr-sm-2 btn-sm btn-danger"><i class="fas fa-toggle-off"></i></button>
									{/if}
									<div class="btn-group">
										<a href="{$EDIT_URL}{$poll->id}" class="btn mr-sm-2 btn-sm btn-warning"><i
												class="fas fa-edit fa-fw"></i></a>
										<button class="btn mr-sm-2 btn-sm btn-danger" type="button" data-toggle="modal"
											data-target="#delete_modal{$poll->id}"><i
												class="fas fa-trash fa-fw"></i></button>
									</div>
								</div>

							</h5>
						</div>
					</div>

					<form action="" id="status{$poll->id}" method="post">
						<input type="hidden" name="token" value="{$TOKEN}">
						<input type="hidden" name="poll_status" value="{$poll->status}">
						<input type="hidden" name="poll_id" value="{$poll->id}">
					</form>

					<!-- Delete modal -->
					<div class="modal fade" id="delete_modal{$poll->id}" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-body">
									<p>{$YOU_ARE_SURE}</p>
									<form action="" id="delete{$poll->id}" method="post">
										<input type="hidden" name="token" value="{$TOKEN}">
										<input type="hidden" name="delete_poll" value="{$poll->id}">
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger" data-dismiss="modal">{$NO}</button>
									<button type="submit" form="delete{$poll->id}"
										class="btn btn-success">{$YES}</button>
								</div>
							</div>
						</div>
					</div>
					{/foreach}

					<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">{$ADD_POLL_LABEL}</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form action="" method="post">
										<div class="form-group">
											<label for="poll_subject">{$POLL_NAME_LABEL}</label>
											<input type="text" id="poll_subject" name="poll_subject"
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
			function showAddModal() {
				$('#addModal').modal().show();
			}
		</script>

</body>

</html>