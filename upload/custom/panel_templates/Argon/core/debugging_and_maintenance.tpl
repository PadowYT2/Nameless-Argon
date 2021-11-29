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
                    <h1 class="text-white">{$DEBUGGING_AND_MAINTENANCE}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    {if isset($ERROR_LOGS)}
                    <a href="{$ERROR_LOGS_LINK}" class="btn btn-info">{$ERROR_LOGS}</a>
                    <hr />
                    {/if}
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}



                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputDebug">{$ENABLE_DEBUG_MODE}</label>
                            <input id="InputDebug" name="enable_debugging" type="checkbox" class="js-switch" value="1"
                                {if $ENABLE_DEBUG_MODE_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="InputMaintenance">{$ENABLE_MAINTENANCE_MODE}</label>
                            <input id="InputMaintenance" name="enable_maintenance" type="checkbox" class="js-switch"
                                value="1" {if $ENABLE_MAINTENANCE_MODE_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="InputPageLoad">{$ENABLE_PAGE_LOAD_TIMER}</label>
                            <input id="InputPageLoad" name="enable_page_load_timer" type="checkbox" class="js-switch"
                                value="1" {if $ENABLE_PAGE_LOAD_TIMER_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="inputMaintenanceMessage">{$MAINTENANCE_MODE_MESSAGE}</label>
                            <textarea style="width:100%" rows="10" name="message"
                                id="InputMaintenanceMessage">{$MAINTENANCE_MODE_MESSAGE_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                        </div>
                    </form>

                </div>
            </div>


        </div>

        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>