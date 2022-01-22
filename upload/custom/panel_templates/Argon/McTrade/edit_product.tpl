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
					{if $ADD_PRODUCT != ""}
					<h1 class="text-white">{$ADD_PRODUCT}</h1>
					{else}
					<h1 class="text-white">{$EDIT_PRODUCT}</h1>
					{/if}
				</div>
			</div>
		</div>

		<div class="container-fluid mt--8">
			<!-- Update Notification -->
			{include file='includes/update.tpl'}

			<div class="card">
				<div class="card-body">
					<section class="content">
						<div class="float-md-right">
							<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
						</div>

						<br>
						<hr>

						<!-- Success and Error Alerts -->
						{include file='includes/alerts.tpl'}

						<form action="" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="Name">{$NAME}</label>
								<input type="text" id="Name" name="trade_name" class="form-control"
									value="{$EDIT_NAME}">
							</div>
							<div class="form-group">
								<label for="Price">{$PRICE}</label>
								<input type="text" id="Price" name="trade_price" class="form-control"
									value="{$EDIT_PRICE}">
							</div>


							<label>{$DESCRIPTION}</label>
							{if !isset($MARKDOWN)}
							<div class="form-group">
								<textarea name="content" class="form-control" id="reply">{$EDIT_DESCRIPTION}</textarea>
							</div>
							{else}
							<div class="form-group">
								<textarea name="content" class="form-control"
									id="markdown">{$EDIT_DESCRIPTION}</textarea>
								<div class="meta">{$MARKDOWN_HELP}</div>
							</div>
							{/if}

							<label>{$TYPE_PRODUCT}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" id="trade_type" onclick="selectType(this.value);"
									name="trade_type">
									<option {if $TRADE_TYPE===1} selected {/if} value="1">DEFAULT</option>
									<option {if $TRADE_TYPE===2} selected {/if} value="2">ECONOMY</option>
									<option {if $TRADE_TYPE===3} selected {/if} value="3">DISABLE RCON</option>
								</select>

								<div id="economy_value_div" class="{if $TRADE_TYPE===2}form-group{else}d-none{/if}">
									<br>
									<label for="economy_value">{$ECONOMY_INPUT}</label>
									<button type="button" class="btn btn-light btn-sm" data-toggle="tooltip"
										data-placement="top" title="{$ECONOMY_HELP}">
										<i class="fa fa-info-circle" aria-hidden="true"></i>
									</button>
									<input type="number" class="form-control" id="economy_value" name="economy_value"
										value="{$ECO_COUNT}">
								</div>
							</div>

							<label>{$CATEGORIES}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="trade_category">

									{foreach from=$CATEGORY_LIST item=category}
									<option {if $category.category_id===$PRODUCT_CATEGORY_ID} selected {/if}
										value="{$category.category_id}">{$category.category_name}</option>
									{/foreach}

								</select>
							</div>


							<label>{$GROUP}</label>
							<div class="form-group">
								<select class="form-control mr-sm-2" name="add_group">
									<option value="0">{$NOT_ADD_GROUP}</option>
									{foreach from=$GROUPS_LIST item=group}
									<option {if $group->id==$ADD_GROUP} selected {/if}
										value="{$group->id}">{$group->name}</option>
									{/foreach}

								</select>
							</div>


							<div id="rcon_command" class="form-group">
								<br><label for="productCommands">{$COMMANDS}</label>
								<button type="button" class="btn btn-light btn-sm" data-toggle="tooltip"
									data-placement="top" title="{$COMMANDS_HELP}">
									<i class="fa fa-info-circle" aria-hidden="true"></i>
								</button>
								<textarea name="commands" class="form-control"
									id="productCommands">{$COMMANDS_VALUE}</textarea>
							</div>


							<div id="rcon" class="form-group">
								<label for="trade_rcon_id">RCON</label>
								<select class="form-control mr-sm-2" name="trade_rcon_id">

									{foreach from=$RCON_LIST item=rcon}
									<option {if $rcon.rcon_id===$PRODUCT_RCON_ID} selected {/if}
										value="{$rcon.rcon_id}">{$rcon.rcon_name}
										{/foreach}

								</select>
							</div>

							<div class="form-group">
								<label for="Img">{$IMG}</label>
								<input type="text" id="Img" name="trade_img" class="form-control" value="{$EDIT_IMG}">
							</div>


							<div class="form-group">
								<label for="uploadFileButton">{$IMG_DOWNLOAD}</label>
								<button type="button" class="btn btn-light btn-sm" data-toggle="tooltip"
									data-placement="top" title="{$IMG_HELP} {$IMG}">
									<i class="fa fa-info-circle" aria-hidden="true"></i>
								</button>


								<div class="custom-file">
									<input type="file" name="resourceFile" class="custom-file-input"
										id="uploadFileButton" accept="image/gif, image/jpg, image/jpeg, image/png"
										onchange="$('#uploadFileName').html(this.files[0].name)">
									<label for="uploadFileButton" class="custom-file-label" id="uploadFileName"></label>
								</div>
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

		<script>
			function selectType(value) {
				if (value == 2) {
					document.getElementById('economy_value_div').className = "form-group";
				} else if (value == 3) {
					document.getElementById('rcon_command').className = "d-none";
					document.getElementById('rcon').className = "d-none";

				} else {
					document.getElementById('economy_value_div').className = "d-none";
					document.getElementById('economy_value').value = 0;
				}
			}
		</script>

		{include file='scripts.tpl'}