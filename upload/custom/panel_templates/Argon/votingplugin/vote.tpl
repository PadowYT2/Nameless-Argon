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
                    <h1 class="text-white">{$VOTE}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a href="{$NEW_SITE_LINK}" class="btn btn-info">{$NEW_SITE}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($SITE_LIST)}
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                                {foreach from=$SITE_LIST item=site}
                                <tr>
                                    <td>
                                        <strong>{$site.title}</strong>
                                    </td>
                                    <td>
                                        <div class="float-md-right">
                                            <a class="btn btn-warning btn-sm" href="{$site.edit_link}"><i
                                                    class="fas fa-edit fa-fw"></i></a>
                                            <button class="btn btn-danger btn-sm" type="button"
                                                onclick="showDeleteModal('{$site.delete_link}')"><i
                                                    class="fas fa-trash fa-fw"></i></button>
                                        </div>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    {$NO_VOTE_SITES}
                    {/if}

                    <hr>

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="link_location">{$LINK_LOCATION}</label>
                            <select class="form-control" id="link_location" name="link_location">
                                <option value="1" {if $LINK_LOCATION_VALUE eq 1} selected{/if}>{$LINK_NAVBAR}</option>
                                <option value="2" {if $LINK_LOCATION_VALUE eq 2} selected{/if}>{$LINK_MORE}</option>
                                <option value="3" {if $LINK_LOCATION_VALUE eq 3} selected{/if}>{$LINK_FOOTER}</option>
                                <option value="4" {if $LINK_LOCATION_VALUE eq 4} selected{/if}>{$LINK_NONE}</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="inputIcon">{$ICON}</label>
                            <input type="text" class="form-control" name="icon" id="inputIcon"
                                placeholder="{$ICON_EXAMPLE}" value="{$ICON_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputMessage">{$MESSAGE}</label><br />
                            <textarea name="message" rows="3" id="InputMessage"
                                class="form-control">{$MESSAGE_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>
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
                        {$CONFIRM_DELETE_SITE}
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