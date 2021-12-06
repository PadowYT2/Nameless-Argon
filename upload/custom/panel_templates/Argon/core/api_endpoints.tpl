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
                    <h1 class="text-white">{$API_ENDPOINTS}</h1>
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
                            <p style="margin-top: 7px; margin-bottom: 7px;">{$ENDPOINTS_INFO}</p>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a class="btn btn-warning"
                                    href="{$BACK_LINK}">{$BACK}</a></span>
                        </div>
                    </div>
                    </br>

                    {if count($ENDPOINTS_ARRAY)}
                    <div class="table-responsive">
                        <table class="table table-borderless table-striped">
                            <thead>
                                <th>{$ROUTE}</th>
                                <th>{$DESCRIPTION}</th>
                                <th>{$MODULE}</th>
                                <th>Method</th>
                            </thead>
                            <tbody>
                                {foreach from=$ENDPOINTS_ARRAY item=endpoint}
                                <tr>
                                    <td>
                                        <div><code>/{$endpoint.route}</code></div>
                                    </td>
                                    <td>
                                        <div>{$endpoint.description}</div>
                                    </td>
                                    <td>
                                        <div>{$endpoint.module}</div>
                                    </td>
                                    <td>
                                        <div><kbd>{$endpoint.method}</kbd></div>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {/if}

                </div>
            </div>

            <!-- End Page Content -->
        </div>


        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>