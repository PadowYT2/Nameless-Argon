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
					<div class="row">
						<div class="col-md-9">
							<h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITE_DROPDOWN}
								<label>{$EDIT_TITLE}</label>
							</h3>
						</div>
						<div class="col-md-3">
							<span class="float-md-right"><a class="btn btn-warning"
									href="{$BACK_LINK}">{$BACK}</a></span>
						</div>
					</div>
					<hr>

					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<form action="" method="post">
						<div class="form-group">
							<label for="DropdownTitle">{$DROPDOWN_TITLE}</label>
							<input type="text" id="DropdownTitle" name="dropdown_title" class="form-control"
								value="{$EDIT_TITLE}">
						</div>
						<div class="form-group">
							<label for="DropdownLocation">{$DROPDOWN_LOCATION}</label>
							<select class="form-control" id="DropdownLocation" name="dropdown_location">
								<option value="1" {if $EDIT_LOCATION==1} selected{/if}>{$LINK_NAVBAR}</option>
								<option value="2" {if $EDIT_LOCATION==2} selected{/if}>{$LINK_FOOTER}</option>
							</select>
							<!-- <input type="text" id="DropdownLocation" name="dropdown_location" class="form-control" value="{$EDIT_LOCATION}"> -->
						</div>
						<div class="form-group">
							<label for="DropdownIcon">{$DROPDOWN_ICON}</label>
							<input type="text" id="DropdownIcon" name="dropdown_icon" class="form-control"
								value="{$EDIT_ICON}">
						</div>
						<div class="form-group">
							<label for="DropdownOrder">{$DROPDOWN_ORDER}</label>
							<input type="text" id="DropdownOrder" name="dropdown_order" class="form-control"
								value="{$EDIT_ORDER}">
						</div>
						<div class="form-group">
							<input type="hidden" name="token" value="{$TOKEN}">
							<input type="submit" class="btn btn-info" value="{$SUBMIT}">
						</div>
					</form>
				</div>
			</div>

		</div>
		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>