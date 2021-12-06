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
						<div class="container-fluid">
							<div class="card">
								<div class="card-body">
									<h5 style="display:inline">{$EDITE_DROPDOWN} <label>{$EDIT_TITLE}</label></h5>
									<div class="float-md-right">
										<a style="display:inline" href="{$BACK_LINK}"
											class="btn btn-warning">{$BACK}</a>
									</div>

									<hr>
									</hr>

									<form action="" method="post">
										<div class="form-group">
											<label for="DropdownTitle">{$PAGE_TITLE}</label>
											<input type="text" id="DropdownTitle" name="page_title" class="form-control"
												value="{$EDIT_TITLE}">
										</div>
										<div class="form-group">
											<label for="PageLink">{$PAGE_LINK}</label>
											<input type="text" id="PageLink" name="page_link" class="form-control"
												value="{$EDIT_LINK}">
										</div>
										<div class="form-group">
											<label for="PageTarget">{$PAGE_TARGET}</label>
											<select class="form-control" id="PageTarget" name="page_target">
												<option value="0">{$NO}</option>
												<option value="1">{$YES}</option>
											</select>
										</div>
										<div class="form-group">
											<label for="PageIcon">{$PAGE_ICON}</label>
											<input type="text" id="PageIcon" name="page_icon" class="form-control"
												value="{$EDIT_ICON}">
										</div>
										<div class="form-group">
											<label for="PageOrder">{$PAGE_ORDER}</label>
											<input type="text" id="PageOrder" name="page_order" class="form-control"
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
					</section>
				</div>
			</div>
		</div>
		{include file='footer.tpl'}


		{include file='scripts.tpl'}

</body>

</html>