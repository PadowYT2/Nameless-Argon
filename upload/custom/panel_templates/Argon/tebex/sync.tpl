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
                    <h1 class="text-white">{$FORCE_SYNC}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    {if isset($SUCCESS) && count($SUCCESS)}
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-check"></i> {$SUCCESS_TITLE}</h5>
                        <ul>
                            {foreach from=$SUCCESS item=item}
                            <li>{$item}</li>
                            {/foreach}
                        </ul>
                    </div>
                    {/if}

                    {if isset($ERRORS) && count($ERRORS)}
                    <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fas fa-exclamation-triangle"></i>
                            {$ERRORS_TITLE}</h5>
                        <ul>
                            {foreach from=$ERRORS item=error}
                            <li>{$error}</li>
                            {/foreach}
                        </ul>
                    </div>
                    {/if}
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>