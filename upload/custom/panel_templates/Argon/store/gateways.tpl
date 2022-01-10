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
                    <h1 class="text-white">{$GATEWAYS}</h1>
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

                    {if isset($GATEWAYS_LIST)}
                    <div class="table-responsive">
                        <table class="table table-striped dataTables-payments">
                            <thead>
                                <tr>
                                    <th>{$PAYMENT_METHOD}</th>
                                    <th>{$ENABLED}</th>
                                    <th>
                                        <div class="float-right">{$EDIT}</div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$GATEWAYS_LIST item=gateway}
                                <tr>
                                    <td>{$gateway.name}</td>
                                    <td>{if $gateway.enabled}<span
                                            class="badge badge-success">{$ENABLED}</span>{else}<span
                                            class="badge badge-danger">{$DISABLED}</span>{/if}</td>
                                    <td><a href="{$gateway.edit_link}"
                                            class="btn btn-info btn-sm float-right">{$EDIT}</a></td>
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