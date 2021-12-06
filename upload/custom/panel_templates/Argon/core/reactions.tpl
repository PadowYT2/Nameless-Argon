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
                    <h1 class="text-white">{$REACTIONS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a href="{$NEW_REACTION_LINK}" class="btn btn-info">{$NEW_REACTION}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($REACTIONS_LIST)}
                    <div class="table-responsive">
                        <table class="table table-borderless table-striped">
                            <thead>
                                <tr>
                                    <td>{$NAME}</td>
                                    <td>{$ICON}</td>
                                    <td>{$TYPE}</td>
                                    <td>{$ENABLED}</td>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$REACTIONS_LIST item=reaction}
                                <tr>
                                    <td><a href="{$reaction.edit_link}">{$reaction.name}</a></td>
                                    <td>{$reaction.html}</td>
                                    <td>{$reaction.type}</td>
                                    <td>{if $reaction.enabled eq 1}
                                        <i class="fa fa-check-circle fa-fw text-success"></i>
                                        {else}
                                        <i class="fa fa-times-circle fa-fw text-danger"></i>
                                        {/if}
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    {$NO_REACTIONS}
                    {/if}

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>
    {include file='scripts.tpl'}

</body>

</html>