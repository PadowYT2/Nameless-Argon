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
                    <h1 class="text-white">{$SERVER_BANNERS}</h1>
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

                    {if isset($NO_SERVERS)}
                    <p>{$NO_SERVERS}</p>
                    {else}
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                                {foreach from=$SERVERS item=server}
                                <tr>
                                    <td>{$server.name}</td>
                                    <td>
                                        <div class="float-md-right">
                                            <a href="{$server.edit_link}" class="btn btn-danger">{$EDIT}</a>
                                            <a href="{$server.view_link}" class="btn btn-info">{$VIEW}</a>
                                        </div>
                                    </td>
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