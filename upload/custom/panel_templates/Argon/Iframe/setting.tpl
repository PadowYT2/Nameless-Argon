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
							<button class="btn btn-info" type="button" onclick="showAddModal()">{$ADD_IFRAME} <i
									class="fa fa-plus-circle">
								</i></button>
							<div class="float-md-right">
								<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
							</div>
						</div>
						<hr>

						{if count($IFRAME_LIST)}
						<h3 class="text-center">{$IFRAME}</h3>
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									{foreach from=$IFRAME_LIST item=iframe}
									<tr>
										<td>
											<strong><a href="{$iframe.edit_link}">{$iframe.name}</strong>
										</td>
										<td>
											<div class="float-md-right">
												<a class="btn btn-warning btn-sm" href="{$iframe.edit_link}"><i
														class="nav-icon fas fa-edit fa-fw"></i></a>
												<button class="btn btn-danger btn-sm" type="button"
													onclick="showDeleteModal('{$iframe.delete_link}')"><i
														class="nav-icon fas fa-trash fa-fw"></i></button>
											</div>
										</td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
						{else}
						<h3 class="text-center">{$NO_IFRAME}</h3>
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
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">{$ADD_IFRAME}</h4>
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
									<label>{$DESCRIPTION}</label>
									{if !isset($MARKDOWN)}
									<div class="form-group">
										<textarea name="content" class="form-control" id="reply">{$CONTENT}</textarea>
									</div>
									{else}
									<div class="form-group">
										<textarea name="content" class="form-control"
											id="markdown">{$CONTENT}</textarea>
										<div class="meta">{$MARKDOWN_HELP}</div>
									</div>
									{/if}
									<label>{$FOOTER_DESCRIPTION}</label>
									{if !isset($MARKDOWN)}
									<div class="form-group">
										<textarea name="footer_content" class="form-control"
											id="footer_reply">{$FOOTER_CONTENT}</textarea>
									</div>
									{else}
									<div class="form-group">
										<textarea name="footer_content" class="form-control"
											id="markdown">{$FOOTER_CONTENT}</textarea>
										<div class="meta">{$MARKDOWN_HELP}</div>
									</div>
									{/if}
									<div class="form-group">
										<label for="Src">{$SRC}</label>
										<input type="text" id="Src" name="src" class="form-control">
									</div>
									<div class="form-group">
										<label for="Iframe_size">{$IFRAME_SIZE}</label>
										<select class="form-control mr-sm-2" id="Iframe_size" name="iframe_size">
											<option value="21by9">21:9 aspect ratio</option>
											<option value="16by9">16:9 aspect ratio</option>
											<option value="4by3">4:3 aspect ratio</option>
											<option value="1by1">1:1 aspect ratio</option>
										</select>
									</div>
									<div class="form-group">
										<input type="hidden" name="add" value="add">
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