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
                    <h1 class="text-white">{$DISCORD}</h1>
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

                    <div class="card shadow border-left-info">
                        <div class="card-body">
                            <h5><i class="icon fa fa-info-circle"></i> {$INFO}</h5>
                            {$INVITE_LINK}
                        </div>
                    </div>
                    <br />

                    <h4>{$REQUIREMENTS}</h4>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                                <tr>
                                    <td>{$BOT_SETUP}</td>
                                    <td>{if $BOT_URL_SET && $GUILD_ID_SET && $BOT_USERNAME_SET}
                                        <i class="fas fa-check-circle text-success"></i>
                                        {else}
                                        <i class="fas fa-times-circle text-danger"></i>
                                        {/if}
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <hr>

                    <form id="settings" action="" method="post">
                        <div class="form-group">
                            <label for="inputEnableDiscord">{$ENABLE_DISCORD_INTEGRATION}</label>
                            <input type="hidden" name="enable_discord" value="0">
                            <input id="inputEnableDiscord" name="enable_discord" type="checkbox" class="js-switch" {if
                                $DISCORD_ENABLED eq 1} checked{/if} value="1" />
                            <input type="hidden" name="token" value="{$TOKEN}">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info" {if !$BOT_URL_SET ||
                                !$GUILD_ID_SET} disabled {/if}>
                        </div>
                    </form>

                </div>
            </div>

        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>