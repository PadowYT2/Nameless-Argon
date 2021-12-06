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
                    <h1 class="text-white">{$WIDGETS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                        <div class="row">
                            <div class="col-md-9">
                                <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_WIDGET}</h3>
                            </div>
                            <div class="col-md-3">
                                    <span class="float-md-right">
                                        {if isset($SETTINGS)}<a href="{$SETTINGS_LINK}"
                                                                class="btn btn-success">{$SETTINGS}</a>{/if}
                                        <a href="{$BACK_LINK}" class="btn btn-primary">{$BACK}</a>
                                    </span>
                            </div>
                        </div>
                        <hr />

                        <!-- Success and Error Alerts -->
                        {include file='includes/alerts.tpl'}

                        <form action="" method="post">

                            <div class="form-group">
                                <label for="inputOrder">{$WIDGET_ORDER}</label>
                                <input id="inputOrder" name="order" type="number" class="form-control" value="{$ORDER}">
                            </div>

                            <div class="form-group">
                                <label for="inputLocation">{$WIDGET_LOCATION}</label>
                                <select name="location" class="form-control" id="inputLocation">
                                    <option value="right" {if $LOCATION eq 'right' } selected{/if}>{$RIGHT}</option>
                                    <option value="left" {if $LOCATION eq 'left' } selected{/if}>{$LEFT}</option>
                                </select>
                            </div>

                            {foreach from=$POSSIBLE_PAGES key=module item=module_pages}
                                {if count($module_pages)}
                                    <div class="table table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>{$MODULE} {$MODULE_SEPERATOR} {$module|escape}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {foreach from=$module_pages key=page item=value}
                                                <tr>
                                                    <td>
                                                        <label for="{$page|escape}"
                                                               style="font-weight: normal;">{($page|escape)|ucfirst}</label>
                                                        <div class="float-md-right">
                                                            <input class="js-switch" type="checkbox" name="pages[]"
                                                                   id="{$page|escape}"
                                                                   value="{$page|escape}" {if in_array($page, $ACTIVE_PAGES)} checked{/if}>
                                                        </div>
                                                    </td>
                                                </tr>
                                            {/foreach}
                                            </tbody>
                                        </table>
                                    </div>
                                {/if}
                            {/foreach}

                            <div class="form-group">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                </br>
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                            </div>
                        </form>

                    </div>
                </div>
        </div>

        {include file='footer.tpl'}


{include file='scripts.tpl'}

</body>

</html> 