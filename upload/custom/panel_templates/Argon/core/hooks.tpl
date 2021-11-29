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
                    <h1 class="text-white">{$HOOKS}</h1>
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
                            <p style="margin-top: 7px; margin-bottom: 7px;">{$HOOKS_INFO}</p>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a href="{$NEW_HOOK_LINK}" class="btn btn-info"><i class="fas fa-plus-circle"></i>
                                    {$NEW_HOOK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($HOOKS_LIST)}
                    <div class="table-responsive">
                        <table class="table table-borderless table-striped">
                            <thead>
                                <tr>
                                    <th>{$NAME}</th>
                                    <th>{$LINK}</th>
                                    <th class="float-md-right">{$EDIT}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$HOOKS_LIST item=item item=hook name=hook_list}
                                <tr>
                                    <td>{$hook.name}</td>
                                    <td><a href="{$hook.edit_link}">{$hook.url}</a></td>
                                    <td>
                                        <div class="float-md-right">
                                            <a href="{$hook.edit_link}" class="btn btn-warning btn-sm"><i
                                                    class="fas fa-edit fa-fw"></i></a>
                                            <button class="btn btn-danger btn-sm" type="button"
                                                onclick="showDeleteModal('{$hook.delete_link}')"><i
                                                    class="fas fa-trash fa-fw"></i></button>
                                        </div>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    {$NO_HOOKS}
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}


        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">{$ARE_YOU_SURE}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_DELETE_HOOK}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="#" id="deleteLink" class="btn btn-info">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- End Wrapper -->
    </div>

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showDeleteModal(id) {
            $('#deleteLink').attr('href', id);
            $('#deleteModal').modal().show();
        }
    </script>

</body>

</html>