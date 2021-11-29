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
                    <h1 class="text-white">{$ERROR_LOGS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>

                    <br /><br />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tr>
                                <td>
                                    <a href="{$FATAL_LOG_LINK}">{$FATAL_LOG}</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="{$NOTICE_LOG_LINK}">{$NOTICE_LOG}</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="{$WARNING_LOG_LINK}">{$WARNING_LOG}</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="{$OTHER_LOG_LINK}">{$OTHER_LOG}</a>
                                </td>
                            </tr>
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