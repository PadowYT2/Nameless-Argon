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
					<h1 class="text-white">{$PURSE_HEAD}</h1>
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


					<section class="content">
						<div class="col text-center">
							<div class="float-md">
								<a class="btn btn-info btn-sm" href="{$PAY_PAL_LINK}">PayPal <i
										class="nav-icon fas fa-sliders-h"></i></a>
								{* <a class="btn btn-info btn-sm" href="{$WEB_MONEY_LINK}">WebMoney <i
										class="nav-icon fas fa-sliders-h"></i></a>
								<a class="btn btn-info btn-sm" href="{$ENOT_MONEY_LINK}">Enot <i
										class="nav-icon fas fa-sliders-h"></i></a>
								<a class="btn btn-info btn-sm" href="{$FREEKASSA_MONEY_LINK}">FreeKassa <i
										class="nav-icon fas fa-sliders-h"></i></a>
								<a class="btn btn-info btn-sm" href="{$UNITPAY_MONEY_LINK}">UnitPay <i
										class="nav-icon fas fa-sliders-h"></i></a> *}
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