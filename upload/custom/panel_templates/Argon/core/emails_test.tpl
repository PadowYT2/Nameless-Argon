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
                    <h1 class="text-white">{$SEND_TEST_EMAIL}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <h3 class="card-title">{$SEND_TEST_EMAIL}</h3>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>

                    {if isset($SEND_TEST_EMAIL_INFO)}
                    <hr />
                    <div class="alert alert-info">
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}
                        </h5>
                        {$SEND_TEST_EMAIL_INFO}
                    </div>
                    <a href="{$SEND_LINK}" class="btn btn-info">{$SEND}</a>
                    {/if}

                </div>
            </div>


        </div>

        {include file='footer.tpl'}

    </div>

    {include file='scripts.tpl'}

</body>

</html>