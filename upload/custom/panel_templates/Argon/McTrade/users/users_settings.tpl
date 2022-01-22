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

						<div class="float-md">
							<form action="" method="post">
								<div class="form-group col">
									<input type="hidden" name="token" value="{$TOKEN}">
									<input type="hidden" name="no_validation" value="{$VALIDATION_USERS}">
									<input type="submit" class="btn btn-success btn-sm" {if $VALIDATION_USERS===1}
										value="{$NO_VALIDATION_USERS}" {else} value="{$YES_VALIDATION_USERS}" {/if}>
								</div>
							</form>
						</div>
						<hr>
						{if count($USERS_LIST)}
						<div class="table-responsive">
							<table class="table table-striped">
								<tbody>
									<td>

										<form action="" method="POST">
											<input type="hidden" name="order"
												value="{if $ORDER == 'ASC'}DESC{else}ASC{/if}">
											<input type="hidden" name="order_column" value="mc_name">
											<button type="submit" class="btn btn-link text-left">{$NAME}{if $ORDER ==
												'ASC'}
												<i class="fas fa-angle-up"></i>{else} <i class="fas fa-angle-down"></i>
												{/if}</button>
										</form>

									</td>
									<td>

										<form action="" method="POST">
											<input type="hidden" name="order"
												value="{if $ORDER == 'ASC'}DESC{else}ASC{/if}">
											<input type="hidden" name="order_column" value="bal">
											<button type="submit" class="btn btn-link text-left">{$BALANCE}{if $ORDER ==
												'ASC'}
												<i class="fas fa-angle-up"></i>{else} <i class="fas fa-angle-down"></i>
												{/if}</button>
										</form>

									</td>
									<td>
										<form action="" method="POST">
											<input type="hidden" name="order"
												value="{if $ORDER == 'ASC'}DESC{else}ASC{/if}">
											<input type="hidden" name="order_column" value="total_bal">
											<button type="submit" class="btn btn-link text-left">{$TOTAL_BALANCE}{if
												$ORDER == 'ASC'}
												<i class="fas fa-angle-up"></i>{else} <i class="fas fa-angle-down"></i>
												{/if}</button>
										</form>

									</td>
									<td>

										<form action="" method="POST">
											<input type="hidden" name="order"
												value="{if $ORDER == 'ASC'}DESC{else}ASC{/if}">
											<input type="hidden" name="order_column" value="user_id">
											<button type="submit" class="btn btn-link text-left">{$SITE_ID}{if $ORDER ==
												'ASC'}
												<i class="fas fa-angle-up"></i>{else} <i class="fas fa-angle-down"></i>
												{/if}</button>
										</form>

									</td>
									<td>

										<form action="" method="POST">
											<input type="hidden" name="order"
												value="{if $ORDER == 'ASC'}DESC{else}ASC{/if}">
											<input type="hidden" name="order_column" value="id">
											<button type="submit" class="btn btn-link text-left">{$MCTRADE_ID}{if $ORDER
												== 'ASC'}
												<i class="fas fa-angle-up"></i>{else} <i class="fas fa-angle-down"></i>
												{/if}</button>
										</form>

									</td>
									<td>

										<form action="" method="POST">
											<input type="hidden" name="order"
												value="{if $ORDER == 'ASC'}DESC{else}ASC{/if}">
											<input type="hidden" name="order_column" value="datetime">
											<button type="submit"
												class="btn btn-link text-left{if $ORDER_COLUMN == 'datetime'} active{/if}">{$DATE}{if
												$ORDER == 'ASC'}
												<i class="fas fa-angle-up"></i>{else} <i class="fas fa-angle-down"></i>
												{/if}</button>
										</form>

									</td>

									<td>
										<div class="float-md-right">
											<strong>{$ACTIONS}</strong>
										</div>
									</td>

									{foreach from=$USERS_LIST item=user}
									<tr>
										<td>
											<strong>{$N}.<a href="{$user.profile_link}"> {$user.name}</a></strong>
										</td>
										<td>
											<strong>{$user.bal} {$CURRENCY}</strong>
										</td>
										<td>
											<strong>{$user.total_bal} {$CURRENCY}</strong>
										</td>
										<td>
											<strong>ID: {$user.site_id}</strong>
										</td>
										<td>
											<strong>Mc-ID: {$user.trade_id}</strong>
										</td>
										<td>
											<strong>{$user.datetime}</strong>
										</td>

										<td>
											<div class="float-md-right">
												<a class="btn btn-warning btn-sm" href="{$user.link}"><i
														class="fas fa-edit fa-fw"></i></a>
												<button class="btn btn-danger btn-sm" type="button"
													onclick="showDeleteModal('{$user.trade_id}')"><i
														class="fas fa-trash fa-fw"></i></button>
											</div>
										</td>
									</tr>
									<div class="d-none">{$N++}</div>
									{/foreach}
								</tbody>
							</table>
						</div>
						{else}
						{$NO_USERS}
						{/if}
					</section>


					<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">{$ARE_YOU_SURE}</h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									{$CONFIRM_DELETE}
								</div>
								<div class="modal-footer">

									<form action="" method="post">
										<div class="form-group col">
											<input type="hidden" name="token" value="{$TOKEN}">
											<input id="delete_user_id" type="hidden" name="delete_user_id">
										</div>
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">{$NO}</button>
										<button type="submit" class="btn btn-info">{$YES}</button>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		{include file='footer.tpl'}

		{include file='scripts.tpl'}

		<script type="text/javascript">
			function showDeleteModal(id) {
				document.getElementById('delete_user_id').value = id;
				$('#deleteModal').modal().show();
			}
		</script>

</body>

</html>