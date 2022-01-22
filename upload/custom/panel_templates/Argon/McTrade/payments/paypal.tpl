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

						<div class="float-md-right">
							<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
						</div>
						</br>
						</br>
						<form action="" method="post">
							<div class="form-group">
								<label for="enabled">{$ENABLED_LABEL}</label>
								<select class="form-control" name="enabled">
									<option {if $ENABLED===1} selected {/if} value="1">true</option>
									<option {if $ENABLED!=1} selected {/if} value="0">false</option>
								</select>
							</div>
							<div class="form-group">
								<label for="currency">{$CURRENCY_LABEL}</label>
								<select type="text" id="currency" name="currency" class="form-control">
									{foreach from=$CURRENCY_LIST item=item key=key name=name}
									<option {if $CURRENCY == $key} selected {/if} value="{$key}">{$key}</option>
									{/foreach}
								</select>
								
							</div>
							<div class="form-group">
								<label for="product_desc">{$PRODUCT_LABEL}</label>
								<input type="text" id="product_desc" name="product_desc" class="form-control" value="{$PRODUCT_DESC}">
							</div>
							<div class="form-group">
								<label for="merchant">{$MERCHANT_LABEL}</label>
								<input type="text" id="merchant" name="merchant" class="form-control" value="{$MERCHANT}">
							</div>
							<div class="form-group">
								<input type="hidden" name="token" value="{$TOKEN}">
								<input type="submit" class="btn btn-info" value="{$SUBMIT}">
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