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
                    <h1 class="text-white">{$QUERY_ERRORS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_ERROR}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <button onclick="showDeleteModal()" class="btn btn-danger">{$DELETE}</button>
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <ul>
                        <li>{$SERVER_ADDRESS}: <strong>{$SERVER_ADDRESS_VALUE}</strong></li>
                        <li>{$SERVER_PORT}: <strong>{$SERVER_PORT_VALUE}</strong></li>
                        <li>{$DATE}: <strong>{$DATE_VALUE}</strong></li>
                    </ul>
                    <pre class="error_log">{$ERROR_MESSAGE}</pre>

                </div>
            </div>

        </div>

        {include file='footer.tpl'}


        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_DELETE_ERROR}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="{$DELETE_LINK}" class="btn btn-info">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>


        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showDeleteModal() {
                $('#deleteModal').modal().show();
            }
        </script>

</body>

</html>