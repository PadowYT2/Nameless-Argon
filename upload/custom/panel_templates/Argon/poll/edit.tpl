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
					<button class="btn btn-info" type="button" onclick="showAddModal()"><i class="fa fa-plus-circle">
						</i>{$ADD_OPTIONS_LABEL}</button>
					<a class="btn btn-warning" href="{$BACK_URL}"><i class="fas fa-backward"></i></a>
					<hr>

					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<form action="" id="delete{$poll_op->id}" method="post">
						<input type="hidden" name="token" value="{$TOKEN}">
						<div class="form-group">
							<label for="poll_update">{$POLL_NAME_LABEL}</label>
							<input class="form-control" type="text" id="poll_update" name="poll_update"
								value="{$POLL->subject}">

						</div>
						<div class="form-group">
							<label for="view_poll">{$VIEW_RESULT_LABEL}</label>
							<select id="view_poll" name="view_poll" class="form-control">
								<option value="1" {if $POLL->view == 1}selected{/if}>True</option>
								<option value="0" {if $POLL->view == 0}selected{/if}>False</option>
							</select>
						</div>

						<input class="btn btn-sm btn-info" type="submit" value="{$SUBMIT}" style="margin-top: 10px;">
					</form>

					<hr>



					{foreach from=$POLL_OPTIONS item=poll_op key=key name=name}
					<div class="card mb-3">
						<div class="card-header">
							<h5 class="mb-0">
								<button class="btn btn-link">
									{$poll_op->name}
								</button>
								<div class="float-right">
									<div class="btn-group">
										<button class="btn mr-sm-2 btn-sm btn-danger" type="button" data-toggle="modal"
											data-target="#delete_modal{$poll_op->id}"><i
												class="fas fa-trash fa-fw"></i></button>
									</div>
								</div>

							</h5>
						</div>
					</div>

					<!-- Delete modal -->
					<div class="modal fade" id="delete_modal{$poll_op->id}" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-body">
									<p>{$YOU_ARE_SURE}</p>
									<form action="" id="delete{$poll_op->id}" method="post">
										<input type="hidden" name="token" value="{$TOKEN}">
										<input type="hidden" name="delete_poll_options" value="{$poll_op->id}">
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger" data-dismiss="modal">{$NO}</button>
									<button type="submit" form="delete{$poll_op->id}"
										class="btn btn-info">{$YES}</button>
								</div>
							</div>
						</div>
					</div>
					{/foreach}




					<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">{$ADD_OPTIONS_LABEL}</h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form action="" method="post">
										<div class="form-group">
											<label for="add_poll_options">{$OPTIONS_NAME_LABEL}</label>
											<input type="text" id="add_poll_options" name="add_poll_options"
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