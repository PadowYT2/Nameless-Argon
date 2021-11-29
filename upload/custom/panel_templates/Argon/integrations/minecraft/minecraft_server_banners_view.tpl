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
                    <h1 class="text-white">{$SERVER_BANNERS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$SERVER_NAME}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <img src="{$BANNER_PATH}" alt="{$SERVER_NAME}" style="margin-bottom: 15px" />
                    <p><code>{$BANNER_URL}</code></p>

                </div>
            </div>

            <!-- Spacing -->
            <div style="height:1rem;"></div>

            <!-- End Page Content -->
        </div>

        <!-- End Main Content -->
    </div>

    {include file='footer.tpl'}

    <!-- End Content Wrapper -->
    </div>

    <!-- End Wrapper -->
    </div>

    {include file='scripts.tpl'}

</body>

</html>