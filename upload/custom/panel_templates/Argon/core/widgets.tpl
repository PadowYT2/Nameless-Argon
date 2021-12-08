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
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {foreach from=$WIDGETS_LIST item=widget name=widget_list}
                    <div class="row">
                        <div class="col-md-9">
                            <strong>{$widget.name}</strong> <small>{$widget.module}</small>
                            <br />
                            <small>{$widget.description}</small>
                        </div>
                        <div class="col-md-3">
                            <div class="float-md-right">
                                {if $widget.enabled}
                                <form action="{$widget.disable_link}" method="post" style="display: inline">
                                    <input type="hidden" name="token" value="{$TOKEN}" />
                                    <input type="submit" class="btn btn-danger" value="{$DISABLE}">
                                </form>
                                <a href="{$widget.settings_link}" class="btn btn-info">{$EDIT}</a>
                                {else}
                                <form action="{$widget.enable_link}" method="post" style="display: inline">
                                    <input type="hidden" name="token" value="{$TOKEN}" />
                                    <input type="submit" class="btn btn-success" value="{$ENABLE}">
                                </form>
                                {/if}
                            </div>
                        </div>
                    </div>
                    {if not $smarty.foreach.widget_list.last}
                    <hr />
                    {/if}
                    {/foreach}

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>