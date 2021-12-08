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
                    <h3 style="display:inline;">{$SETTINGS}</h3>
                    <hr>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputSecretKey">{$SECRET_KEY}</label>
                            <span class="badge badge-info" data-html="true" data-toggle="popover" title="{$INFO}"
                                data-content="{$SECRET_KEY_INFO}"><i class="fas fa-question-circle"></i></span>
                            <input id="inputSecretKey" name="secret_key" class="form-control"
                                placeholder="{$SECRET_KEY}" value="{$SECRET_KEY_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputProfileStats">{$SHOW_STATS_ON_PROFILE}</label>
                            <input id="inputProfileStats" name="display_profile" type="checkbox" class="js-switch" {if
                                $SHOW_STATS_ON_PROFILE_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                    <center>
                        <p>MCStatistics Module by <a href="https://partydragen.com/"
                                target="_blank">Partydragen</a></br>
                            Data provided by <a href="https://mcstatistics.org/" target="_blank">MCStatistics</a></p>
                    </center>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>