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
                    <h1 class="text-white">{$CATEGORIES}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <span class="float-md-right"><a href="{$NEW_CATEGORY_LINK}"
                            class="btn btn-info">{$NEW_CATEGORY}</a></span>
                        </div>
                    </div>
                    <hr>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($CATEGORIES_LIST)}
                    <div class="table-responsive">
                        <table class="table table-striped" style="width:100%">
                            <thead>
                            </thead>
                            <tbody>
                                {foreach from=$CATEGORIES_LIST item=item}
                                <tr>
                                    <td>{$item.name}</td>
                                    <td>
                                        <div class="float-md-right">
                                            <a class="btn btn-warning btn-sm" href="{$item.edit_link}"><i
                                                    class="fas fa-edit fa-fw"></i></a>
                                            <button class="btn btn-danger btn-sm" type="button"
                                                onclick="showDeleteModal('{$item.delete_link}')"><i
                                                    class="fas fa-trash fa-fw"></i></button>
                                        </div>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    {$NONE_CATEGORIES_DEFINED}
                    {/if}
                    </br>
                    {if !$PREMIUM}
                    <center>
                        <p>Suggestion Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p>
                    </center>
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
                        {$CONFIRM_DELETE_CATEGORY}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="#" id="deleteLink" class="btn btn-danger">{$YES}</a>
                    </div>
                </div>
            </div>
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