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
                    <h1 class="text-white">{$BANS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_BAN}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <colgroup>
                                <col span="1" style="width: 50%">
                                <col span="1" style="width: 50%">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><strong>{$IGN}</strong></td>
                                    <td><img src="{$AVATAR}" class="rounded" style="max-height:25px;max-width:25px;"
                                            alt="{$IGN_VALUE}"> {$IGN_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$UUID}</strong></td>
                                    <td>{$UUID_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$IP_ADDRESS}</strong></td>
                                    <td>{$IP_ADDRESS_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$REASON}</strong></td>
                                    <td>{$REASON_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$DATE}</strong></td>
                                    <td>{$DATE_VALUE}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="callout callout-info">
                        <h5><i class="icon fa fa-info-circle"></i> {$INFO}</h5>
                        {$UNBAN_IN_BUYCRAFT}
                    </div>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>