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
                    <h1 class="text-white">{$WIKI}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a href="{$NEW_PAGE_LINK}" class="btn btn-info">{$NEW_PAGE}</a>
                    <hr>
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($WIKI_PAGES)}
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                                {foreach from=$WIKI_PAGES item=wiki_page}
                                {if $wiki_page->getParent() == "null" || !empty($wiki_page->getSubPages())}
                                <tr>
                                    <td>
                                        <strong>{$wiki_page->getTitle()}</strong>
                                    </td>
                                    <td>
                                        <div class="float-md-right">
                                            <a class="btn btn-warning btn-sm" href="{$wiki_page->getEditLink()}"><i
                                                    class="fas fa-edit fa-fw"></i></a>
                                            <a class="btn btn-success btn-sm" href="{$wiki_page->getOriginalLink()}"><i
                                                    class="fas fa-eye fa-fw"></i></a>
                                            <button class="btn btn-danger btn-sm" type="button"
                                                onclick="showDeleteModal('{$wiki_page->getDeleteLink()}')"><i
                                                    class="fas fa-trash fa-fw"></i></button>
                                        </div>
                                    </td>
                                </tr>
                                {/if}
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    <p>{$NO_WIKIS_FOUNDED}</p>
                    {/if}
                    <hr>
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="link_location">{$LINK_LOCATION}</label>
                            <select class="form-control" id="link_location" name="link_location">
                                <option value="1" {if $LINK_LOCATION_VALUE eq 1} selected{/if}>{$LINK_NAVBAR}
                                </option>
                                <option value="2" {if $LINK_LOCATION_VALUE eq 2} selected{/if}>{$LINK_MORE}
                                </option>
                                <option value="3" {if $LINK_LOCATION_VALUE eq 3} selected{/if}>{$LINK_FOOTER}
                                </option>
                                <option value="4" {if $LINK_LOCATION_VALUE eq 4} selected{/if}>{$LINK_NONE}
                                </option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="inputIcon">{$ICON_TITLE}</label>
                            <input type="text" class="form-control" name="icon" id="inputIcon"
                                placeholder="{$ICON_MENU_EXAMPLE}" value="{$ICON_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputMessage">{$HOME_PAGE_SECTION_TITLE}</label><br />
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
                        <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_REMOVE_PAGE}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="#" id="deleteLink" class="btn btn-danger">{$YES}</a>
                    </div>
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

        function showDeleteButtonModal(id) {
            $('#deleteButtonLink').attr('href', id);
            $('#deleteButtonModal').modal().show();
        }
    </script>

</body>

</html>