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
                    <h1 class="text-white">{$FORUMS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CREATING_FORUM}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><button class="btn btn-warning"
                                    onclick="showCancelModal()">{$CANCEL}</button></span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <div class="form-group">
                                <label for="InputType">{$FORUM_TYPE}</label>
                                <select class="form-control" id="InputType" name="forum_type">
                                    <option value="forum">{$FORUM_TYPE_FORUM}</option>
                                    <option value="category">{$FORUM_TYPE_CATEGORY}</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="forumname">{$FORUM_NAME}</label>
                            <input class="form-control" type="text" name="forumname" id="forumname"
                                value="{$FORUM_NAME_VALUE}" placeholder="{$FORUM_NAME}" autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label for="inputdesc">{$FORUM_DESCRIPTION}</label>
                            <textarea name="forumdesc" id="inputdesc" placeholder="{$FORUM_DESCRIPTION}"
                                class="form-control" rows="3">{$FORUM_DESCRIPTION_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="forum_icon">{$FORUM_ICON}</label>
                            <input class="form-control" type="text" name="forum_icon" id="forum_icon"
                                value="{$FORUM_ICON_VALUE}" placeholder="{$FORUM_ICON}" autocomplete="off">
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


        <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">{$ARE_YOU_SURE}</h5>
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


        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showCancelModal() {
                $('#cancelModal').modal().show();
            }
        </script>

</body>

</html>