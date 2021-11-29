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
                    <h1 class="text-white">{$EDITING_TEMPLATE}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_TEMPLATE}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                {if $PERMISSIONS_LINK}<a class="btn btn-info"
                                    href="{$PERMISSIONS_LINK}">{$PERMISSIONS}</a>{/if}
                                <a href="{$BACK_LINK}" class="btn btn-info">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($DEFAULT_TEMPLATE_WARNING)}
                    <div class="alert alert-warning">{$DEFAULT_TEMPLATE_WARNING}</div>
                    {/if}

                    <div class="table-responsive">
                        <table class="table table-striped">
                            {if count($TEMPLATE_DIRS)}
                            {foreach from=$TEMPLATE_DIRS item=dir}
                            <tr>
                                <td>
                                    <i class="fa fa-folder"></i> {$dir.name}
                                    <div class="float-right">
                                        <a href="{$dir.link}" class="btn btn-info btn-sm"><i
                                                class="fas fa-search fa-fw"></i></a>
                                    </div>
                                </td>
                            </tr>
                            {/foreach}
                            {/if}
                            {if count($TEMPLATE_FILES)}
                            {foreach from=$TEMPLATE_FILES item=file}
                            <tr>
                                <td>
                                    <i class="fa fa-file"></i> {$file.name}
                                    <div class="float-right">
                                        <a href="{$file.link}" class="btn btn-info btn-sm"><i
                                                class="fas fa-edit fa-fw"></i></a>
                                    </div>
                                </td>
                            </tr>
                            {/foreach}
                            {/if}
                        </table>
                    </div>


                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>