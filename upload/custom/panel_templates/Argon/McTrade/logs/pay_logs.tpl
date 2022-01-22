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


						<div class="row">
							<div class="container-fluid">
								<div class="float-right">
									<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
								</div>
							</div>
						</div>

						<hr>
						{if count($TRADE_PAY_LOGS)}
							<div class="table-responsive">
								<table class="table table-striped">
									<tbody>
										<td>
											<strong>{$USER}</strong>
										</td>
										<td>
											<strong>{$STATUS}</strong>
										</td>
										<td>
											<strong>{$PAYMENT_STATUS}</strong>
										</td>
										<td>
											<strong>{$MC_GROSS}</strong>
										</td>
										<td>
											<strong>{$PAYER_EMAIL}</strong>
										</td>
										<td>
											<strong>{$DATETIME}</strong>
										</td>
										<td>
											<strong>{$TXN_ID}</strong>
										</td>

										{foreach from=$TRADE_PAY_LOGS item=log}
											<tr>
												<td>
													<strong>{$N}. {$log.user_id}</strong>
												</td>
												<td>
													<strong>{$log.status}</strong>
												</td>
												<td>
													<strong>{$log.payment_status}</strong>
												</td>
												<td>
													<strong>{$log.mc_gross} {$log.mc_currency}</strong>
												</td>
												<td>
													<strong>{$log.payer_email}</strong>
												</td>
												<td>
													<strong>{$log.datetime}</strong>
												</td>
												<td>
													<strong>{$log.txn_id}</strong>
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