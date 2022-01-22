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

					<!-- Main content -->
					<section class="content">
						<div class="row" style="margin-bottom: 10px;">
							<div class="col-md-9">
								<h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDIT_SERVER} {$EDIT_NAME}</h3>
							</div>
							<div class="col-md-3">
								<span class="float-md-right">
									<a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
								</span>
							</div>
						</div>
						<hr />

						<!-- Success and Error Alerts -->
						{include file='includes/alerts.tpl'}

						<form action="" method="post">
							<div class="form-group">
								<label for="ServerName">{$SERVER_NAME}</label>
								<input type="text" id="ServerName" name="server_name" class="form-control"
									value="{$EDIT_NAME}">
							</div>
							<div class="form-group">
								<label for="ServerIP">{$SERVER_IP}</label>
								<input type="text" id="ServerIP" name="server_ip" class="form-control"
									value="{$EDIT_IP}">
							</div>
							<div class="form-group">
								<label for="ServerPort">{$SERVER_PORT}</label>
								<input type="text" id="ServerPort" name="server_port" class="form-control"
									value="{$EDIT_PORT}">
							</div>
							<div class="form-group">
								<label for="ServerPass">{$SERVER_PASS}</label>
								<input type="password" id="ServerPass" name="server_pass" class="form-control"
									value="{$EDIT_PASS}">
							</div>
							<div class="form-group">
								<input type="hidden" name="token" value="{$TOKEN}">
								<input type="submit" class="btn btn-info" value="{$SUBMIT}">
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