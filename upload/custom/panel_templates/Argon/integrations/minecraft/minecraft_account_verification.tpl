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
                    <h1 class="text-white">{$ACCOUNT_VERIFICATION}</h1>
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

                    <form id="enablePremium" action="" method="post">
                        <label for="inputPremiumAccounts">{$FORCE_PREMIUM_ACCOUNTS}</label>
                        <input type="hidden" name="enable_premium_accounts" value="0">
                        <input id="inputPremiumAccounts" name="enable_premium_accounts" type="checkbox"
                            class="js-switch js-check-change" {if $FORCE_PREMIUM_ACCOUNTS_VALUE} checked{/if}
                            value="1" />
                        <input type="hidden" name="premium" value="1">
                        <input type="hidden" name="token" value="{$TOKEN}">
                    </form>

                    {if $FORCE_PREMIUM_ACCOUNTS_VALUE}
                    <hr />
                    <div class="alert alert-info">
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}
                        </h5>
                        {$MCASSOC_INFO}
                    </div>
                    <br />
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="use_mcassoc">{$USE_MCASSOC}</label>
                            <input id="use_mcassoc" name="use_mcassoc" type="checkbox" class="js-switch" {if
                                $USE_MCASSOC_VALUE} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="mcassoc_key">{$MCASSOC_KEY}</label>
                            <input type="text" class="form-control" name="mcassoc_key" id="mcassoc_key"
                                value="{$MCASSOC_KEY_VALUE}" placeholder="{$MCASSOC_KEY}">
                        </div>
                        <div class="form-group">
                            <label for="mcassoc_instance">{$MCASSOC_INSTANCE}</label>
                            <input type="text" class="form-control" name="mcassoc_instance" id="mcassoc_instance"
                                value="{$MCASSOC_INSTANCE_VALUE}" placeholder="{$MCASSOC_INSTANCE}">
                            <br />
                            <p>{$MCASSOC_INSTANCE_HELP}</p>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>
                    {/if}

                </div>
            </div>

        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

        <script type="text/javascript">
            function generateInstance() {
              var text = "";
              var possible = "abcdef0123456789";
              // thanks SO 1349426
              for (var i = 0; i < 32; i++)
                text += (possible.charAt(Math.floor(Math.random() * possible.length)));
          
              document.getElementById("mcassoc_instance").setAttribute("value", text);
            }
        </script>

</body>

</html>