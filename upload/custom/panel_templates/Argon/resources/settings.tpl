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
                    <h1 class="text-white">{$SETTINGS}</h1>
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

                    {if isset($UPLOADS_DIRECTORY_WRITABLE_INFO)}
                    <div class="alert alert-danger">
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-exclamation-triangle"></i>
                            {$WARNING}
                        </h5>
                        {$UPLOADS_DIRECTORY_WRITABLE_INFO}
                    </div>
                    {/if}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputCurrency">{$CURRENCY}</label>
                            <input class="form-control" type="text" value="{$CURRENCY_VALUE}" id="inputCurrency"
                                name="currency">
                        </div>
                        <div class="form-group">
                            <label for="inputFilesize">{$FILESIZE}</label>
                            <input class="form-control" type="number" value="{$FILESIZE_VALUE}" id="inputFilesize"
                                name="filesize" min="1">
                        </div>
                        <div class="form-group">
                            <label for="inputPrePurchaseInfo">{$PRE_PURCHASE_INFO}</label>
                            <textarea id="inputPrePurchaseInfo"
                                name="pre_purchase_info">{$PRE_PURCHASE_INFO_VALUE}</textarea>
                        </div>

                        <h5>{$PAYPAL_API_DETAILS}</h5>

                        <div class="alert alert-info">
                            <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}
                            </h5>
                            {$PAYPAL_API_DETAILS_INFO}
                        </div>
                        <br />

                        <div class="form-group">
                            <label for="inputPaypalId">{$PAYPAL_CLIENT_ID}</label>
                            <input class="form-control" type="text" id="inputPaypalId" name="client_id">
                        </div>

                        <div class="form-group">
                            <label for="inputPaypalSecret">{$PAYPAL_CLIENT_SECRET}</label>
                            <input class="form-control" type="text" id="inputPaypalSecret" name="client_secret">
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

</body>

</html>