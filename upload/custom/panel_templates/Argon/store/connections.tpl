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
                    <h1 class="text-white">{$CONNECTIONS}</h1>
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
                            <p style="margin-top: 7px; margin-bottom: 7px;">{$CONNECTIONS_INFO}</p>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$NEW_CONNECTION_LINK}" class="btn btn-info"><i
                                        class="fas fa-plus-circle"></i> {$NEW_CONNECTION}</a></span>
                        </div>
                    </div>

                    <hr>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($CONNECTIONS_LIST)}
                    <div class="table-responsive">
                        <table class="table table-borderless table-striped">
                            <thead>
                                <tr>
                                    <th>{$CONNECTION_ID}</th>
                                    <th>{$NAME}</th>
                                    <th>{$TYPE}</th>
                                    <th class="float-md-right">{$ACTIONS}</th>
                                </tr>
                            </thead>
                            <tbody id="sortable">
                                {foreach from=$CONNECTIONS_LIST item=connection}
                                <tr data-id="{$announcement[0]->id}">
                                    <td>{$connection.id}</td>
                                    <td>{$connection.name}</td>
                                    <td>{$connection.type}</td>
                                    <td class="float-md-right">
                                        <a href="{$connection.edit_link}" class="btn btn-warning btn-sm"><i
                                                class="fa fa-fw fa-edit"></i></a>
                                        <a href="#" onclick="showDeleteModal({$connection.id})"
                                            class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i></a>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    {$NO_CONNECTIONS}
                    {/if}
                </div>
            </div>
            </br>
            <div class="card shadow mb-4">
                <div class="card-body">
                    <p style="margin-top: 7px; margin-bottom: 7px;">Downloads</p>
                    <hr>

                    Minecraft Plugin for Spigot or Bukkit - <a
                        href="https://www.spigotmc.org/resources/nameless-store.87221/" target="_blank"
                        class="btn btn-info btn-sm">Go to Spigot</a>
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
                        {$CONFIRM_DELETE_CONNECTION}
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" id="deleteId" value="">
                        <button type="button" class="btn btn-info" data-dismiss="modal">{$NO}</button>
                        <button type="button" onclick="deleteConnection()" class="btn btn-danger">{$YES}</button>
                    </div>
                </div>
            </div>
        </div>

        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showDeleteModal(id) {
                $('#deleteId').attr('value', id);
                $('#deleteModal').modal().show();
            }

            function deleteConnection() {
                const id = $('#deleteId').attr('value');
                if (id) {
                    const response = $.post("{$DELETE_LINK}", { id, action: 'delete', token: "{$TOKEN}" });
                    response.done(function () { window.location.reload(); });
                }
            }
        </script>

</body>

</html>