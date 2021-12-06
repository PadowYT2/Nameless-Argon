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
						<h3 class="text-center">{$ADD_VIDEO}</h3>
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
							<div class="form-group">
								<label>{$NAME}</label>
								<input type="text" name="name" class="form-control" value="{$VIDEO_NAME}">
							</div>
							<div class="form-group">
								<label>{$DESC}</label>
								<textarea type="text" name="description" class="form-control">{$VIDEO_DESC}</textarea>
							</div>
							<label>{$CATEGORY}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="category">

									<option value="0">{$NO_CATEGORY}</option>
									{foreach from=$CATEGORY_LIST item=category}
									<option {if $category.id===$CATEGORY_ID} selected {/if} value="{$category.id}">
										{$category.name}
									</option>
									{/foreach}
								</select>
							</div>
							<div class="form-group">
								<label>{$URL}</label>
								<input type="text" name="video_code" class="form-control"
									value="https://youtu.be/{$VIDEO_CODE}">
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
										<p>{$CONFIRM_DELETE}</p>
										<form action="" id="delete" method="post">
											<input type="hidden" name="token" value="{$TOKEN}">
											<input type="hidden" name="delete_video" value="{$ID}">
										</form>
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