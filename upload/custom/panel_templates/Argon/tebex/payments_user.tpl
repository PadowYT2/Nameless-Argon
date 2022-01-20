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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_PAYMENTS_FOR_USER}</h3>
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

                    {if isset($NO_PAYMENTS)}
                    <p>{$NO_PAYMENTS}</p>
                    {else}
                    <div class="table-responsive">
                        <table class="table table-striped dataTables-payments">
                            <thead>
                                <tr>
                                    <th>{$USER}</th>
                                    <th>{$AMOUNT}</th>
                                    <th>{$DATE}</th>
                                    <th>{$VIEW}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$USER_PAYMENTS item=payment}
                                <tr>
                                    <td><a href="{$payment.user_link}" style="{$payment.user_style}"><img
                                                src="{$payment.user_avatar}" class="rounded"
                                                style="max-width:32px;max-height:32px;" alt="{$payment.username}" />
                                            {$payment.username}</a></td>
                                    <td>{$payment.currency_symbol}{$payment.amount}</td>
                                    <td data-sort="{$payment.date_unix}">{$payment.date}</td>
                                    <td><a href="{$payment.link}" class="btn btn-info btn-sm">{$VIEW}</a></td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>