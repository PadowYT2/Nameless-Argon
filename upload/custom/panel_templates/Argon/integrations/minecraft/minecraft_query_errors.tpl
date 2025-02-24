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
                    <button onclick="showPurgeModal()" class="btn btn-warning">{$PURGE_QUERY_ERRORS}</button>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($QUERY_ERRORS_ARRAY)}
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>{$SERVER_ADDRESS}</th>
                                    <th>{$SERVER_PORT}</th>
                                    <th>{$DATE}</th>
                                    <th>{$ACTIONS}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$QUERY_ERRORS_ARRAY item=query_error}
                                <tr>
                                    <td>{$query_error.ip}</td>
                                    <td>{$query_error.port}</td>
                                    <td>{$query_error.date}</td>
                                    <td>
                                        <a href="{$query_error.view_link}" class="btn btn-info">{$VIEW}</a>
                                        <button onclick="showDeleteModal('{$query_error.delete_link}')"
                                            class="btn btn-danger">{$DELETE}</button>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {$PAGINATION}
                    {else}
                    <p>{$NO_QUERY_ERRORS}</p>
                    {/if}

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
                        <a href="#" id="deleteLink" class="btn btn-info">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="purgeModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_PURGE_ERRORS}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="{$PURGE_QUERY_ERRORS_LINK}" class="btn btn-info">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>



        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showDeleteModal(link) {
                $('#deleteLink').attr('href', link);
                $('#deleteModal').modal().show();
            }

            function showPurgeModal() {
                $('#purgeModal').modal().show();
            }
        </script>

</body>

</html>