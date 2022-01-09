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
                    {include file='includes/alerts.tpl'}

                    {if isset($NO_PAYMENTS)}
                    <p>{$NO_PAYMENTS}</p>
                    {else}
                    <div class="table-responsive">
                        <table class="table table-striped dataTables-payments" style="width:100%">
                            <thead>
                                <tr>
                                    <th>{$USER}</th>
                                    <th>{$AMOUNT}</th>
                                    <th>{$STATUS}</th>
                                    <th>{$DATE}</th>
                                    <th>{$VIEW}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$ALL_PAYMENTS item=payment}
                                <tr>
                                    <td>
                                        {if !empty($payment.user_avatar)}
                                        <a href="{$payment.user_link}" style="{$payment.user_style}"><img
                                                src="{$payment.user_avatar}" class="rounded"
                                                style="max-width:32px;max-height:32px;" alt="{$payment.username}" />
                                            {$payment.username}</a>
                                        {else}
                                        <i class="fa fa-user"></i> {$payment.username}
                                        {/if}
                                    </td>
                                    <td>{$payment.currency_symbol}{$payment.amount}</td>
                                    <td>{$payment.status}</td>
                                    <td data-sort="{$payment.date_unix}">{$payment.date}</td>
                                    <td><a href="{$payment.link}" class="btn btn-info btn-sm">{$VIEW}</a></td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {/if}

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