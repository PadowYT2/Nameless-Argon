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

					<section class="content">
						<!-- Success and Error Alerts -->
						{include file='includes/alerts.tpl'}

						<hr>

						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>

									<tr>
										<td>
											<strong><a href="{$BUY_LOGS_LINK}">{$BUY_LOGS_TITLE}</a></strong>
										</td>
										</td>
									</tr>
									<tr>
										<td>
											<strong><a href="{$PAYMENTS_LOGS_LINK}">{$PAYMENTS_LOGS_TITLE}</a></strong>
										</td>
										</td>
									</tr>
									<tr>
										<td>
											<strong><a href="{$TRANSFER_LOGS_LINK}">{$TRANSFER_LOGS_TITLE}</a></strong>
										</td>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
					</section>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}


		{include file='scripts.tpl'}

</body>

</html>