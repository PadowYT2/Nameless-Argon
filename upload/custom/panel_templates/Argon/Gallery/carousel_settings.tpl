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
					<div class="float-md-right">
						<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
					</div>
					</br>
					<hr>

					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<section class="content">
						<h3 class="text-center">{$CAROUSEL_SETTINGS}</h3>
						<form action="" method="post">
							<div class="form-group">
								<label>{$CAROUSEL_ENABLE}</label>
								<select class="form-control mr-sm-2" name="car_enable">
									<option {if $ENABLE_VAR===1} selected {/if} value="1">{$ENABLED}</option>
									<option {if $ENABLE_VAR===2} selected {/if} value="2">{$DISABLED}</option>
								</select>
							</div>
							<div class="form-group">
								<label>{$CAROUSEL_PAGINATION}</label>
								<button type="button" class="btn btn-light btn-sm" data-toggle="tooltip"
									data-placement="top" title="{$PAGINATION_HELP}">
									<i class="fa fa-question-circle" aria-hidden="true"></i>
								</button>
								<select class="form-control mr-sm-2" name="car_pagination">
									<option {if $PAGINATION_VAR===1} selected {/if} value="1">{$ENABLED}</option>
									<option {if $PAGINATION_VAR===2} selected {/if} value="2">{$DISABLED}</option>
								</select>
							</div>
							<div class="form-group">
								<label>{$SORT}</label>
								<select class="form-control mr-sm-2" name="car_sort">
									<option {if $SORT_VAR===1} selected {/if} value="1">{$DESC}</option>
									<option {if $SORT_VAR===2} selected {/if} value="2">{$ASC}</option>
								</select>
							</div>
							<div class="form-group">
								<label>{$CAROUSEL_STYLE}</label>
								<select class="form-control mr-sm-2" name="car_style">
									<option {if $STYLE_VAR===1} selected {/if} value="1">{$FULL_ING_STYLE}</option>
									<option {if $STYLE_VAR===2} selected {/if} value="2">{$BOOTSTRAP_STYLE}</option>
								</select>
							</div>
							<div class="form-group">
								<label>{$INDICATORS}</label>
								<select class="form-control mr-sm-2" name="car_indicator">
									<option {if $INDICATOR_VAR===1} selected {/if} value="1">{$ENABLED}</option>
									<option {if $INDICATOR_VAR===2} selected {/if} value="2">{$DISABLED}</option>
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