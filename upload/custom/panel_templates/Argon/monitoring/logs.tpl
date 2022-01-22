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
					<h1 class="text-white">{$LOGS_HEAD}</h1>
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

						{if count($BUY_LOGS)}
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									<td>
										<strong>{$USER_LABEL}</strong>
									</td>
									<td>
										<strong>{$PRODUCT_LABEL}</strong>
									</td>
									<td>
										<strong>{$STATUS_LABEL}</strong>
									</td>
									<td>
										<strong>{$SERVER_LABEL}</strong>
									</td>
									<td>
										<strong>{$PRICE_LABEL}</strong>
									</td>
									<td>
										<strong>{$DATETIME}</strong>
									</td>

									{foreach from=$BUY_LOGS item=log}
									<tr>
										<td>
											<strong>{$N}.<a href="{$log.edit_user_link}" target="_blank">
													{$log.user_id}</a></strong>
										</td>
										<td>
											<strong>{$log.product_id}</strong>
										</td>
										<td>
											<strong>{$log.status}</strong>
										</td>
										<td>
											<a href="{$log.edit_server_link}" target="_blank"> {$log.server_id}</a>
										</td>
										<td>
											<strong>{$log.price} {$DISPLAY_CURRENCY}</strong>
										</td>
										<td>
											<strong>{$log.datetime}</strong>
										</td>
									</tr>
									<div class="d-none">{$N++}</div>
									{/foreach}
								</tbody>
							</table>
						</div>
						{else}
						{$NO_LOGS}
						{/if}
					</section>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>