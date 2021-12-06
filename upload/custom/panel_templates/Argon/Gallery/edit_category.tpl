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
						<h3 style="display:inline">{$EDITE} {$EDIT_NAME}</h3>
						<div class="float-md-right">
							<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
						</div>
						<hr />

						<!-- Success and Error Alerts -->
						{include file='includes/alerts.tpl'}

						<form action="" method="post">
							<div class="form-group">
								<label for="category">{$NAME_LABEL}</label>
								<input type="text" id="category" name="category_name" class="form-control"
									value="{$EDIT_NAME}">
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