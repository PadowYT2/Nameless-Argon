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
                    <h1 class="text-white">{$USERS}</h1>
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
                        <div class="table-responsive">
                            <table class="table table-striped table-hover dataTables-users" style="width:100%">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>{$USER}</th>
                                    <th>{$GROUP}</th>
                                    <th>{$REGISTERED}</th>
                                </tr>
                                </thead>
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