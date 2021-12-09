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
					<div class="col-md-12">
						<span class="float-md-right"><a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a></span>
					</div>
					</br>
					</br>
					<hr>

					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<section class="content">

						<h3 class="text-center">{$EDIT_IMAGES}</h3>

						<form action="" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label>{$ENABLED_GALLERY}</label>
								<div class="form-group">
									<select class="form-control" name="display_gallery">
										<option value="1">{$ENABLED}</option>
										<option value="0">{$DISABLED}</option>
									</select>
								</div>
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
								<label for="uploadFileButton">{$IMG_DOWNLOAD}</label>
								<div class="custom-file">
									<input type="file" name="resourceFile" class="custom-file-input"
										id="uploadFileButton" accept="image/*"
										onchange="$('#uploadFileName').html(this.files[0].name)">
									<label for="uploadFileButton" class="custom-file-label" id="uploadFileName"></label>
								</div>
							</div>

							<h3 class="text-center">{$CAROUSEL_IMG_SETTINGS}</h3>

							<div class="form-group">
								<label>{$ENABLED_CAROUSEL}</label>
								<div class="form-group">
									<select class="form-control mr-sm-2" name="display_carousel">
										<option value="1">{$ENABLED}</option>
										<option value="0">{$DISABLED}</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label>{$CAROUSEL_HEAD_LABEL}</label>
								<input type="text" name="carousel_head" class="form-control" value="{$CAROUSEL_HEAD}">
							</div>
							<label>{$HEAD_COLOR_CAROUSEL}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="carousel_head_color">
									<option class="text-info" value="text-info">text-info</option>
									<option class="text-secondary" value="text-secondary">text-secondary</option>
									<option class="text-success" } value="text-success">text-success</option>
									<option class="text-danger" value="text-danger">text-danger</option>
									<option class="text-warning" value="text-warning">text-warning</option>
									<option class="text-info" value="text-info">text-info</option>
									<option class="text-light" value="text-light">text-light</option>
									<option class="text-dark" value="text-dark">text-dark</option>
									<option class="text-muted" value="text-muted">text-muted</option>
									<option class="text-white" value="text-white">text-white</option>
								</select>
							</div>
							<div class="form-group">
								<label>{$CAROUSEL_TITLE_LABEL}</label>
								<textarea type="text" name="carousel_title" class="form-control"></textarea>
							</div>
							<label>{$TITLE_COLOR_CAROUSEL}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="carousel_title_color">
									<option class="text-info" value="text-info">text-info</option>
									<option class="text-secondary" value="text-secondary">text-secondary</option>
									<option class="text-success" } value="text-success">text-success</option>
									<option class="text-danger" value="text-danger">text-danger</option>
									<option class="text-warning" value="text-warning">text-warning</option>
									<option class="text-info" value="text-info">text-info</option>
									<option class="text-light" value="text-light">text-light</option>
									<option class="text-dark" value="text-dark">text-dark</option>
									<option class="text-muted" value="text-muted">text-muted</option>
									<option class="text-white" value="text-white">text-white</option>
								</select>
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