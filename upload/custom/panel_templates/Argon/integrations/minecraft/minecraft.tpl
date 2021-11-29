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
                    <h1 class="text-white">{$MINECRAFT}</h1>
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

                    <form id="enableMinecraft" action="" method="post">
                        <div class="form-group">
                            <label for="inputEnableMinecraft">{$ENABLE_MINECRAFT_INTEGRATION}</label>
                            <input type="hidden" name="enable_minecraft" value="0">
                            <input id="inputEnableMinecraft" name="enable_minecraft" type="checkbox"
                                class="js-switch js-check-change" {if $MINECRAFT_ENABLED eq 1} checked{/if} value="1" />
                            <input type="hidden" name="token" value="{$TOKEN}">
                        </div>
                    </form>

                    {if $MINECRAFT_ENABLED eq 1}
                    <div class="table-responsive">
                        <table class="table table-striped">
                            {if isset($AUTHME)}
                            <tr>
                                <td>
                                    <a href="{$AUTHME_LINK}">{$AUTHME}</a>
                                </td>
                            </tr>
                            {/if}
                            {if isset($ACCOUNT_VERIFICATION)}
                            <tr>
                                <td>
                                    <a href="{$ACCOUNT_VERIFICATION_LINK}">{$ACCOUNT_VERIFICATION}</a>
                                </td>
                            </tr>
                            {/if}
                            {if isset($SERVERS)}
                            <tr>
                                <td>
                                    <a href="{$SERVERS_LINK}">{$SERVERS}</a>
                                </td>
                            </tr>
                            {/if}
                            {if isset($QUERY_ERRORS)}
                            <tr>
                                <td>
                                    <a href="{$QUERY_ERRORS_LINK}">{$QUERY_ERRORS}</a>
                                </td>
                            </tr>
                            {/if}
                            {if isset($BANNERS)}
                            <tr>
                                <td>
                                    <a href="{$BANNERS_LINK}">{$BANNERS}</a>
                                </td>
                            </tr>
                            {/if}
                            {if isset($PLACEHOLDERS)}
                            <tr>
                                <td>
                                    <a href="{$PLACEHOLDERS_LINK}">{$PLACEHOLDERS}</a>
                                </td>
                            </tr>
                            {/if}
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