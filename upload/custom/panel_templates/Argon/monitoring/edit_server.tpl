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
					<h1 class="text-white">{$SERVER->name}</h1>
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

						<div class="float-md-right" style="margin-block-end: 20px;">
							<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
							<a style="display:inline" href="{$VIEW_LINK}" target="_blank"
								class="btn btn-info">{$GO_TO_SERVER_LABEL}</a>
						</div>
						<form action="" method="post">
							<div class="form-group">
								<label for="status">{$SERVER_CONFIRM}?</label>
								<select class="form-control" id="status" name="status">
									<option {if $SERVER->status == 0} selected {/if} value="0">{$NO}</option>
									<option {if $SERVER->status == 1} selected {/if} value="1">{$YES}</option>
								</select>
							</div>
							<div class="form-group">
								<label for="votes">{$VOTES_LABEL}</label>
								<input type="text" id="votes" name="votes" class="form-control"
									value="{$SERVER->votes}">
							</div>

							<div class="form-group">
								<label for="points">{$POINTS_LABEL}</label>
								<input type="text" id="points" name="points" class="form-control"
									value="{$SERVER->points}">
							</div>
							<div class="form-group">
								<label for="sponsor">{$SPONSOR_LABEL}</label>
								<select class="form-control" id="sponsor" name="sponsor">
									<option {if $SERVER->sponsor == 0} selected {/if} value="0">{$NO}</option>
									<option {if $SERVER->sponsor == 1} selected {/if} value="1">{$YES}</option>
								</select>
							</div>

							<div class="form-group">
								<label for="status">{$OWNER_LABEL}</label>
								<select class="form-control" id="owner_id" name="owner_id">
									{foreach from=$USERS_DATA item=item key=key name=name}
									<option {if $item->id == $SERVER->owner_id} selected {/if}
										value="{$item->id}">{$item->username}
									</option>
									{/foreach}
								</select>

							</div>




							<div class="form-group">
								<input type="hidden" name="update_server" value="1">
								<input type="hidden" name="token" value="{$TOKEN}">
								<input type="submit" class="btn btn-info" value="{$SUBMIT_LABEL}">
							</div>
						</form>


					</section>

				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>