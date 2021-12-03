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
                    <h1 class="text-white">{$SECURITY}</h1>
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


                    <p><strong>{$PLEASE_SELECT_LOGS}</strong></p>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            {foreach from=$LINKS item=link}
                            <tr>
                                <td>
                                    <a href="{$link.link}">{$link.title}</a>
                                </td>
                            </tr>
                            {/foreach}
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