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
                    <!-- Success and Error Alerts -->
                    <div class="col-md-9">
                        <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_PAYMENT}</h3>
                    </div>
                    <div class="col-md-3">
                        <span class="float-md-right">
                            <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                        </span>
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
                                    <td><strong>{$USER}</strong></td>
                                    <td>
                                        {if !empty($AVATAR)}
                                        <img src="{$AVATAR}" class="rounded" style="max-height:32px;max-width:32px;"
                                            alt="{$USER_NAME}"> <a style="{$STYLE}" href="{$USER_LINK}">{$USER_NAME}</a>
                                        {else}
                                        <i class="fa fa-user"></i> {$USER_NAME}
                                        {/if}
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>{$STATUS}</strong></td>
                                    <td>{$STATUS_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$TRANSACTION}</strong></td>
                                    <td>{$TRANSACTION_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$PAYMENT_METHOD}</strong></td>
                                    <td>{$PAYMENT_METHOD_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$AMOUNT}</strong></td>
                                    <td>{$CURRENCY_SYMBOL}{$AMOUNT_VALUE} ({$CURRENCY_ISO})</td>
                                </tr>
                                <tr>
                                    <td><strong>{$FEE}</strong></td>
                                    <td>{$CURRENCY_SYMBOL}{$FEE_VALUE} ({$CURRENCY_ISO})</td>
                                </tr>
                                <tr>
                                    <td><strong>{$DATE}</strong></td>
                                    <td>{$DATE_VALUE}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <center>
                        <p>Donate Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p>
                    </center>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>