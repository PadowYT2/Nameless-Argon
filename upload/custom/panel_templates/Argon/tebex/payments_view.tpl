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
                    <h1 class="text-white">{$PAYMENTS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_PAYMENT}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <colgroup>
                                <col span="1" style="width: 50%">
                                <col span="1" style="width: 50%">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><strong>{$IGN}</strong></td>
                                    <td><img src="{$AVATAR}" class="rounded" style="max-height:32px;max-width:32px;"
                                            alt="{$IGN_VALUE}"> <a style="{$STYLE}" href="{$USER_LINK}">{$IGN_VALUE}</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>{$UUID}</strong></td>
                                    <td>{$UUID_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$PRICE}</strong></td>
                                    <td>{$CURRENCY_SYMBOL}{$PRICE_VALUE} ({$CURRENCY_ISO})</td>
                                </tr>
                                <tr>
                                    <td><strong>{$DATE}</strong></td>
                                    <td>{$DATE_VALUE}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>