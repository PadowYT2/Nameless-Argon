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
						<button style="display:inline" class="btn btn btn-danger" type="button" data-toggle="modal"
							data-target="#delete_modal{$ID}">{$REMOVE} <i class="fas fa-trash fa-fw"></i></button>
						<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
					</div>
					</br>
					</br>
					<hr>

					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<section class="content">
						<h3 class="text-center">{$EDIT_IMAGES}</h3>

						<div class="row justify-content-center">
							<img class="img-thumbnail" src="{$SRC}?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
								alt="{$ATL}">
						</div>

						<form action="" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label>{$ENABLED_GALLERY}</label>
								<div class="form-group">
									<select class="form-control mr-sm-2" name="display_gallery">
										<option {if $DISPLAY_GALLERY===1} selected {/if} value="1">{$ENABLED}</option>
										<option {if $DISPLAY_GALLERY===0} selected {/if} value="0">{$DISABLED}</option>
									</select>
								</div>
							</div>
							<label>{$CATEGORY}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="category">
									<option value=" ">{$NO_CATEGORY}</option>
									{foreach from=$CATEGORY_LIST item=category}
									<option {if $category.id===$CATEGORY_ID} selected {/if} value="{$category.id}">
										{$category.name}
									</option>
									{/foreach}
								</select>
							</div>

							<h3 class="text-center">{$CAROUSEL_IMG_SETTINGS}</h3>

							<div class="form-group">
								<label>{$ENABLED_CAROUSEL}</label>
								<div class="form-group">
									<select class="form-control mr-sm-2" name="display_carousel">
										<option {if $DISPLAY_CAROUSEL===1} selected {/if} value="1">{$ENABLED}</option>
										<option {if $DISPLAY_CAROUSEL===0} selected {/if} value="0">{$DISABLED}</option>
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
									<option class="{$CAROUSEL_HEAD_COLOR}" value="{$CAROUSEL_HEAD_COLOR}">
										{$CAROUSEL_HEAD_COLOR}
									</option>
									<option class="text-primary" value="text-primary">text-primary</option>
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
								<textarea type="text" name="carousel_title"
									class="form-control">{$CAROUSEL_TITLE}</textarea>
							</div>
							<label>{$TITLE_COLOR_CAROUSEL}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="carousel_title_color">
									<option class="{$CAROUSEL_TITLE_COLOR}" value="{$CAROUSEL_TITLE_COLOR}">
										{$CAROUSEL_TITLE_COLOR}
									</option>
									<option class="text-primary" value="text-primary">text-primary</option>
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
								<input type="hidden" name="id" value="{$ID}">
								<input type="hidden" name="token" value="{$TOKEN}">
								<input type="submit" class="btn btn-info" value="{$SAVE}">
							</div>
						</form>

						<!-- Delete modal -->
						<div class="modal fade" id="delete_modal{$ID}" tabindex="-1" role="dialog">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">{$ARE_YOU_SURE}</h4>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										{$CONFIRM_DELETE}
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">{$NO}</button>
										<a href="#" id="deleteLink" class="btn btn-info">{$YES}</a>
									</div>
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