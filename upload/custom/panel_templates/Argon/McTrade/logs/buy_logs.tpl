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
						{if count($TRADE_BUY_LOGS)}
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									<td>
										<strong>{$BUY_USER}</strong>
									</td>
									<td>
										<strong>{$BUY_PRODUCT}</strong>
									</td>
									<td>
										<strong>{$BUY_STATUS}</strong>
									</td>
									<td>
										<strong>{$BUY_ERRORS}</strong>
									</td>
									<td>
										<strong>{$DATETIME}</strong>
									</td>

									<td>
										<div class="float-md-right">
											<strong>{$ACTIONS}</strong>
										</div>
									</td>

									{foreach from=$TRADE_BUY_LOGS item=log}
									<tr>
										<td>
											<strong>{$N}.<a href="{$log.edit_user_link}"> {$log.user_id}</a></strong>
										</td>
										<td>
											<strong>{$log.product_id}</strong>
										</td>
										<td>
											<strong>{if $log.status == 1}Completed{else}Error{/if}</strong>
										</td>
										<td>
											<strong>{$log.errors}</strong>
										</td>
										<td>
											<strong>{$log.datetime}</strong>
										</td>

										<td>
											<div class="float-md-right">
												<a class="btn btn-warning btn-sm" href="{$log.edit_user_link}"><i
														class="fas fa-edit fa-fw"></i></a>

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