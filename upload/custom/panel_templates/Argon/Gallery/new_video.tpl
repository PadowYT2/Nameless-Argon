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
					<div class="float-md-right mr-sm-2">
						<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
					</div>
					</br>
					<hr>

					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<section class="content">
						<h3 class="text-center">{$ADD_VIDEO}</h3>
						<form action="" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label>{$ENABLED_GALLERY}</label>
								<div class="form-group">
									<select class="form-control mr-sm-2" name="display_gallery">
										<option value="1">{$ENABLED}</option>
										<option value="0">{$DISABLED}</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label>{$NAME}</label>
								<input type="text" name="name" class="form-control">
							</div>
							<div class="form-group">
								<label>{$DESC}</label>
								<textarea type="text" name="description" class="form-control"></textarea>
							</div>
							<label>{$CATEGORY}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="category">
									<option value="0">{$NO_CATEGORY}</option>
									{foreach from=$CATEGORY_LIST item=category}
									<option value="{$category.id}">{$category.name}</option>
									{/foreach}
								</select>
							</div>
							<div class="form-group">
								<label>{$URL}</label>
								<input type="url" name="video_code" class="form-control"
									placeholder="https://youtu.be/Zjnlipkt21k">
							</div>
							<div class="form-group">
								<input type="hidden" name="token" value="{$TOKEN}">
								<input type="submit" class="btn btn-info" value="{$SAVE}">
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