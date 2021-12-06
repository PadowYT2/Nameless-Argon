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
					<div class="float-md-left mr-sm-2">
						<a style="display:inline" href="{$ADD_IMG_LINK}" class="btn btn-info">{$ADD_IMAGES}</a>
					</div>
					<div class="float-md-left mr-sm-2">
						<a style="display:inline" href="{$ADD_CATEGORY_LINK}"
							class="btn btn-info">{$CATEGORY_SETTINGS}</a>
					</div>
					<div class="float-md-right mr-sm-2">
						<a style="display:inline" href="{$GALLERY_SETTINGS_LINK}"
							class="btn btn-success">{$GALLERY_SETTINGS}</a>
					</div>
					<div class="float-md-right mr-sm-2">
						<a style="display:inline" href="{$CAROUSEL_SETINGS_LINK}"
							class="btn btn-success">{$CAROUSEL_SETINGS}</a>
					</div>
					</br>
					<hr>

					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<section class="content">
						<h3 class="text-center">{$ALL_IMAGES}</h3>
						<div class="row">
							{foreach from=$IMAGES_LIST item=image}
							<div class="col-lg-1 col-md-4 col-xs-6 thumb">
								<a class="thumbnail" href="{$image.edit_link}">
									<img class="img-thumbnail"
										src="{$image.src}?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
										alt="{$image.alt}">
								</a>
							</div>
							{/foreach}
						</div>
						{$PAGINATION}
					</section>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}


</body>

</html>