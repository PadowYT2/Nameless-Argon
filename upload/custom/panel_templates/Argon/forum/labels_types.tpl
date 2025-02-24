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
                    <h1 class="text-white">{$LABEL_TYPES}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a href="{$NEW_LABEL_TYPE_LINK}" class="btn btn-info">{$NEW_LABEL_TYPE}</a>
                    <a href="{$LABELS_LINK}" class="btn btn-info">{$LABELS}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($ALL_LABEL_TYPES)}
                    {foreach from=$ALL_LABEL_TYPES item=label_type name=label_list}
                    <div class="row">
                        <div class="col-md-9">
                            {$label_type.name}
                        </div>
                        <div class="col-md-3">
                            <div class="float-md-right">
                                <a href="{$label_type.edit_link}" class="btn btn-info btn-sm">{$EDIT}</a>
                                <button onclick="showDeleteModal('{$label_type.delete_link}')"
                                    class="btn btn-danger btn-sm">{$DELETE}</button>
                            </div>
                        </div>
                    </div>
                    {if !$smarty.foreach.label_list.last}
                    <hr />
                    {/if}
                    {/foreach}
                    {else}
                    <p>{$NO_LABEL_TYPES}</p>
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
                        {$CONFIRM_DELETE}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <form action="" id="deleteForm" method="post" style="display: inline">
                            <input type="hidden" name="token" value="{$TOKEN}" />
                            <input type="submit" class="btn btn-info" value="{$YES}" />
                        </form>
                    </div>
                </div>
            </div>
        </div>

        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showDeleteModal(link) {
                $('#deleteForm').attr('action', link);
                $('#deleteModal').modal().show();
            }
        </script>

</body>

</html>