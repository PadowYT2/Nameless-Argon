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
                    <h1 class="text-white">{$GENERAL_SETTINGS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$ACTION_TITLE}</h3>
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

                    <form action="" method="post">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="inputTrigger">Trigger On</label>
                                    <select name="trigger" class="form-control" id="inputTrigger">
                                        <option value="1" {if $TRIGGER_VALUE==1} selected{/if}>Purchase</option>
                                        <option value="2" {if $TRIGGER_VALUE==2} selected{/if}>Refund</option>
                                        <option value="3" {if $TRIGGER_VALUE==3} selected{/if}>Changeback</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label for="inputRequirePlayer">Require the player to be online</label>
                                    <select name="requirePlayer" class="form-control" id="inputRequirePlayer">
                                        <option value="1" {if $REQUIRE_PLAYER_VALUE==1} selected{/if}>Yes</option>
                                        <option value="0" {if $REQUIRE_PLAYER_VALUE==0} selected{/if}>No</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputConnections">{$CONNECTIONS}</label>
                            <select name="connections[]" id="label_connections" size="3" class="form-control" multiple
                                style="overflow:auto;" required>
                                {foreach from=$CONNECTIONS_LIST item=connection}
                                <option value="{$connection.id}" {if $connection.selected} selected{/if}>
                                    {$connection.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="InputName">Command (Without /)</label></br>
                            <label for="InputName">{literal}Placeholders: {username} {uuid}{/literal}</label>
                            <input type="text" name="command" class="form-control" id="InputName"
                                value="{$COMMAND_VALUE}"
                                placeholder="{literal}say Thanks {name} for purchasing {productName}{/literal}">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>