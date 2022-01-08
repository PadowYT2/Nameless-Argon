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

					<div class="col">

						<form action="" method="POST">
							<div class="form-group">
								<label for="discord_id">{$DISCORD_ID_LABEL}</label>
								<input type="text" class="form-control" id="discord_id" name="discord_id"
									value="{$DISCORD_ID}">
							</div>


							<div class="form-group">
								<label for="channel_id">{$CHANNEL_ID_LABEL}</label>
								<input type="text" class="form-control" id="channel_id" name="channel_id"
									value="{$CHANNEL_ID}">
							</div>

							<div class="form-group">
								<label for="color_btn">{$COLOR_BTN_LABEL}</label>
								<input type="color" class="form-control" id="color_btn" name="color_btn"
									value="{$COLOR_BTN}">
							</div>

							<div class="form-group">
								<label for="btn_horizontal">{$HORIZONTAL_LOCATION_LABEL}</label>
								<select class="form-control" id="btn_horizontal" name="btn_horizontal">
									<option {if $BTN_HORIZONTAL=='bottom' }selected{/if} value="bottom">Bottom</option>
									<option {if $BTN_HORIZONTAL=='top' }selected{/if} value="top">Top</option>
								</select>
							</div>


							<div class="form-group">
								<label for="btn_vertical">{$VERTICAL_LOCATION_LABEL}</label>
								<select class="form-control" id="btn_vertical" name="btn_vertical">
									<option {if $BTN_VERTICAL=='left' }selected{/if} value="left">Left</option>
									<option {if $BTN_VERTICAL=='right' }selected{/if} value="right">Right</option>
								</select>
							</div>

							<div class="form-group">
								<input type="hidden" name="token" value="{$TOKEN}">
								<button style="width: 100%;" type="submit" class="btn btn-info"><i
										class="fas fa-save"></i></button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}
</body>