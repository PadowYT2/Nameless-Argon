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
					<h1 class="text-white">{$SUBMISSIONS}</h1>
				</div>
			</div>
		</div>

		<div class="container-fluid mt--8">
			<!-- Update Notification -->
			{include file='includes/update.tpl'}

			<div class="card">
				<div class="card-body">
					<h3 style="margin-top: 10px; margin-bottom: 7px;">{$SUBMISSIONS}</h3>
					<hr>

					<form action="" method="post">
						<div class="form-row">
							<div class="col-2">
								<label for="form_selection">{$FORM}</label>
							</div>
							<div class="col-2">
								<label for="form_selection">{$STATUS}</label>
							</div>
							<div class="col-2">
								<label for="form_selection">{$USER}</label>
							</div>
						</div>

						<div class="form-row">
							<div class="col-2">
								<select class="form-control" id="form_selection" name="form_selection">
									{foreach from=$FORM_LIST item=form}
									<option value="{$form.id}" {if $FORM_SELECTION_VALUE eq {$form.id}} selected{/if}>
										{$form.name}</option>
									{/foreach}
								</select>
							</div>
							<div class="col-2">
								<select class="form-control" id="status_selection" name="status_selection">
									{foreach from=$STATUS_LIST item=status}
									<option value="{$status.id}" {if $STATUS_SELECTION_VALUE eq {$status.id}}
										selected{/if}>{$status.html}</option>
									{/foreach}
								</select>
							</div>
							<div class="col-2">
								<input type="text" name="user" class="form-control" id="InputUser" value="{$USER_VALUE}"
									placeholder="{$ID_OR_USERNAME}">
							</div>
							<div class="col-2">
								<input type="hidden" name="token" value="{$TOKEN}">
								<input type="submit" value="{$SORT}" class="btn btn-info">
							</div>
						</div>
					</form>

					</br>

					{if count($SUBMISSIONS_LIST)}
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>{$FORM}</th>
									<th>{$USER}</th>
									<th>{$UPDATED_BY}</th>
									<th>{$STATUS}</th>
									<th>{$ACTIONS}</th>
								</tr>
							</thead>
							<tbody>
								{foreach from=$SUBMISSIONS_LIST item=submission}
								<tr>
									<td>{$submission.form_name}</td>
									<td>
										{if !empty($submission.user_avatar)}
										<a href="{$submission.user_profile}" style="{$submission.user_style}"><img
												src="{$submission.user_avatar}" style="max-height:25px;max-width:25px;"
												alt="{$submission.user_name}" class="rounded">
											{$submission.user_name}</a>
										{else}
										<i class="fa fa-user"></i> {$submission.user_name}
										{/if}
										<br /><span data-toggle="tooltip"
											data-original-title="{$submission.reported_at_full}">{$submission.created_at}</span>
									</td>
									<td>
										{if !empty($submission.updated_by_avatar)}
										<a href="{$submission.updated_by_profile}"
											style="{$submission.updated_by_style}"><img
												src="{$submission.updated_by_avatar}"
												style="max-height:25px;max-width:25px;"
												alt="{$submission.updated_by_name}" class="rounded">
											{$submission.updated_by_name}</a>
										{else}
										<i class="fa fa-user"></i> {$submission.updated_by_name}
										{/if}
										<br /><span data-toggle="tooltip"
											data-original-title="{$submission.reported_at_full}">{$submission.updated_at}</span>
									</td>
									<td>
										<h5>{$submission.status}</h5>
									</td>
									<td><a href="{$submission.link}" class="btn btn-info">{$VIEW} &raquo;</a></td>
								</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
					</br>
					{$PAGINATION}
					{else}
					{$NO_SUBMISSIONS}
					{/if}

					<center>
						<p>Forms Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p>
					</center>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>