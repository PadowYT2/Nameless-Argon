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
                    <h1 class="text-white">{$EDITING_WIDGET}</h1>
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
                                <a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($SETTINGS_TEMPLATE)}
                    {include file=$SETTINGS_TEMPLATE}
                    {/if}

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>