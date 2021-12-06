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
                    <h1 class="text-white">{$EDITING_PROFILE_FIELD}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_PROFILE_FIELD}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning text-white" onclick="showCancelModal()">{$CANCEL}</a>
                                <a class="btn btn-danger text-white" onclick="showDeleteModal()">{$DELETE}</a>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="inputFieldName">{$FIELD_NAME}</label>
                                    <input type="text" class="form-control" id="inputFieldName" name="name"
                                        placeholder="{$FIELD_NAME}" value="{$FIELD_NAME_VALUE}">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputFieldType">{$TYPE}</label>
                                    <select class="form-control" name="type" id="inputFieldType">
                                        {foreach from=$TYPES key=key item=item}
                                        <option value="{$key}" {if $key eq $TYPE_VALUE} selected{/if}>{$item}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputDescription">{$DESCRIPTION}</label>
                            <textarea class="form-control" id="inputDescription"
                                name="description">{$DESCRIPTION_VALUE}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="inputRequired">{$REQUIRED}</label>
                            <span class="badge badge-info" style="margin-right:10px"><i class="fas fa-question-circle"
                                    data-container="body" data-toggle="popover" title="{$INFO}"
                                    data-content="{$REQUIRED_HELP}"></i></span>
                            <input type="checkbox" id="inputRequired" name="required" class="js-switch" {if
                                $REQUIRED_VALUE eq 1} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="inputEditable">{$EDITABLE}</label>
                            <span class="badge badge-info" style="margin-right:10px"><i class="fas fa-question-circle"
                                    data-container="body" data-toggle="popover" title="{$INFO}"
                                    data-content="{$EDITABLE_HELP}"></i></span>
                            <input type="checkbox" id="inputEditable" name="editable" class="js-switch" {if
                                $EDITABLE_VALUE eq 1} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="inputPublic">{$PUBLIC}</label>
                            <span class="badge badge-info" style="margin-right:10px"><i class="fas fa-question-circle"
                                    data-container="body" data-toggle="popover" title="{$INFO}"
                                    data-content="{$PUBLIC_HELP}"></i></span>
                            <input type="checkbox" id="inputPublic" name="public" class="js-switch" {if $PUBLIC_VALUE eq
                                1} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="inputForum">{$DISPLAY_FIELD_ON_FORUM}</label>
                            <span class="badge badge-info"><i class="fas fa-question-circle" data-container="body"
                                    data-toggle="popover" title="{$INFO}"
                                    data-content="{$DISPLAY_FIELD_ON_FORUM_HELP}"></i></span>
                            <input type="checkbox" id="inputForum" name="forum" class="js-switch" {if
                                $DISPLAY_FIELD_ON_FORUM_VALUE eq 1} checked{/if} />
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="action" value="update">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                </div>
            </div>

        </div>
        {include file='footer.tpl'}
    </div>

    <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$CONFIRM_CANCEL}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                    <a href="{$CANCEL_LINK}" class="btn btn-info">{$YES}</a>
                </div>
            </div>
        </div>
    </div>

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
                    <form action="" method="post">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="{$FIELD_ID}">
                        <input type="submit" class="btn btn-info" value="{$YES}">
                    </form>
                </div>
            </div>
        </div>
    </div>

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showCancelModal() {
            $('#cancelModal').modal().show();
        }

        function showDeleteModal() {
            $('#deleteModal').modal().show();
        }
    </script>

</body>

</html>