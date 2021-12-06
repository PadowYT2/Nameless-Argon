<style>
	.main-wrapper {
		width: 90%;
		max-width: 900px;
		margin: 3em auto;
		text-align: center;
	}

	.bdg {
		position: relative;
		margin: 1.5em 3em;
		width: 4em;
		height: 6.2em;
		border-radius: 10px;
		display: inline-block;
		top: 0;
		transition: all 0.2s ease;
	}

	.bdg:before,
	.bdg:after {
		position: absolute;
		width: inherit;
		height: inherit;
		border-radius: inherit;
		background: inherit;
		content: "";
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		margin: auto;
	}

	.bdg:before {
		transform: rotate(60deg);
	}

	.bdg:after {
		transform: rotate(-60deg);
	}

	.bdg:hover {
		top: -4px;
	}

	.bdg .circle {
		/* width: 60px; */
		height: 60px;
		position: absolute;
		background: #fff;
		z-index: 10;
		border-radius: 50%;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		margin: auto;
	}

	.bdgsmall .circlesmall {
		/* width: 60px; */
		height: 60px;
		position: absolute;
		background: #fff;
		z-index: 10;
		border-radius: 50%;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		margin: auto;
	}

	.bdgsmall {
		position: relative;
		border-radius: 50%;
		margin: 1.5em 3em;
		width: 0em;
		height: 0em;
		border-radius: 10px;
		display: inline-block;
		top: 0;
		transition: all 0.2s ease;
	}

	.bdgsmall .circlesmall i.fa {
		font-size: 2em;
		margin-top: 8px;
	}

	.bdg .circle i.fa {
		font-size: 2em;
		margin-top: 8px;
	}

	.bdg .font {
		display: inline-block;
		margin-top: 1em;
	}

	.bdg .ribbon {
		position: absolute;
		border-radius: 4px;
		padding: 5px 5px 4px;
		width: 100px;
		z-index: 11;
		color: #fff;
		bottom: 12px;
		left: 50%;
		margin-left: -50px;
		height: 25px;
		font-size: 14px;
		box-shadow: 0 1px 2px rgba(0, 0, 0, 0.27);
		text-shadow: 0 2px 2px rgba(0, 0, 0, 0.1);
		text-transform: uppercase;
		background: linear-gradient(to bottom right, #555 0%, #333 100%);
		cursor: default;
	}
</style>

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
					<a class="btn btn-warning" style="margin-bottom: 10px" href="{$BACK_LINK}">{$BACK}</a>
					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}
					<hr />


					<div class="main-wrapper">
						<div id="js_color" class="bdg"
							style="background: linear-gradient(to bottom right, {$EDIT_BDG_COLOR} 0%, {$EDIT_BDG_COLOR} 100%); color: {$EDIT_BDG_COLOR};">
							<div id="js_icon" class="circle"> {$SET_EDIT_BDG_ICON}</div>
							<div id="js_ribbon" class="ribbon">{$EDIT_BDG_RIBBON}</div>
						</div>
					</div>

					<form action="" method="post">

						<div class="form-group">
							<label for="bdg_color">{$BDG_COLOR_TITLE}</label>
							<input type="color" oninput="colorBDG(this.value)" id="bdg_color" name="bdg_color"
								class="form-control" value="{$EDIT_BDG_COLOR}">
						</div>
						<div class="form-group">
							<label for="bdg_icon">{$BDG_INON_TITLE}</label>
							<input type="text" oninput="iconBDG(this.value)" id="bdg_icon" name="bdg_icon"
								list="bdg_icon_list" class="form-control" value="{$EDIT_BDG_ICON}">
							<datalist id="bdg_icon_list">
								<option value=' <i class=" fa fa-bolt"></i>'>
								<option value=' <i class="fa fa-tree"></i>'>
								<option value=' <i class="fa fa-bicycle"></i>'>
								<option value=' <i class="fa fa-users"></i>'>
								<option value=' <i class="fa fa-anchor"></i>'>
								<option value=' <i class="fa fa-rocket"></i>'>
								<option value=' <i class="fa fa-tree"></i>'>
								<option value=' <i class="fa fa-user fa-street-view"></i>'>
								<option value=' <i class="fa fa-magic"></i>'>
								<option value=' <span class="font">YOUR TEXT</span>'>
							</datalist>
						</div>

						<div class="form-group">
							<label for="bdg_ribbon">{$BDG_RIBBON_TITLE}</label>
							<input type="text" oninput="ribbonBDG(this.value)" id="bdg_ribbon" name="bdg_ribbon"
								class="form-control" value="{$EDIT_BDG_RIBBON}">
						</div>

						<div class="form-group">
							<label for="name">{$NAME}</label>
							<input type="text" id="name" name="name" class="form-control" value="{$EDIT_NAME}">
						</div>

						<div class="form-group">
							<label for="require_posts">{$REQUIRE_POST}</label>
							<input type="number" id="require_posts" name="require_posts" class="form-control"
								value="{$EDIT_REQUIRE_POST}">
						</div>

						<div class="form-group">
							<input type="hidden" name="token" value="{$TOKEN}">
							<input type="submit" class="btn btn-info" value="{$SUBMIT}">
						</div>

					</form>

				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

		<script type="text/javascript">
			function colorBDG(color) {
				document.getElementById('js_color').style = 'background: linear-gradient(to bottom right, ' + color +
					' 0%, ' + color + ' 100%); color: ' + color + ';';
			}

			function iconBDG(icon) {
				document.getElementById('js_icon').innerHTML = icon;
			}

			function ribbonBDG(text) {
				document.getElementById('js_ribbon').innerHTML = text;
			}
		</script>

</body>

</html>