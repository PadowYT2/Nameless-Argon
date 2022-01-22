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
					<h1 class="text-white">{$EDIT_USER} <a href="{$PROFILE_LINK}"> {$USERNAME}</a></h1>
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
								<input type="text" id="Name" name="trade_name" class="form-control" value="{$USERNAME}">
							</div>
							<div class="form-group">
								<label for="Bal">{$BALANCE}</label>
								<input type="text" id="Bal" name="trade_bal" class="form-control" value="{$USER_BAL}">
							</div>

							<div class="form-group">
								<label for="Site_id">{$SITE_ID}</label>
								<input type="text" id="Site_id" name="site_id" class="form-control"
									value="{$USER_SITE_ID}">
							</div>


							{if isset($USER_VALIDATION)}
							<div class="form-group">
								<label for="validation">{$VALIDATION}</label>
								<select class="form-control mr-sm-2" id="validation" name="validation">
									<option {if $USER_VALIDATION==0} selected {/if} value="0">false</option>
									<option {if $USER_VALIDATION==1} selected {/if} value="1">true</option>

								</select>
							</div>
							{/if}

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
				} else {
					document.getElementById('economy_value_div').className = "d-none";
					document.getElementById('economy_value').value = 0;
				}
			}
		</script>

		{include file='scripts.tpl'}