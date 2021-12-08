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
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CREATING_CATEGORY}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a style="color:white" role="button" class="btn btn-warning"
                                    onclick="showCancelModal()" class="btn btn-warning">{$CANCEL}</a></span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="catname">{$CATEGORY_NAME}</label>
                            <input class="form-control" type="text" name="catname" id="catname"
                                value="{$CATEGORY_NAME_VALUE}" placeholder="{$CATEGORY_NAME}" autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label for="catdesc">{$CATEGORY_DESCRIPTION}</label>
                            <textarea id="catdesc" name="catdesc" placeholder="{$CATEGORY_DESCRIPTION}"
                                class="form-control" rows="3">{$CATEGORY_DESCRIPTION_VALUE}</textarea>
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

        {include file='scripts.tpl'}
        <script type="text/javascript">
            function showCancelModal() {
                $('#cancelModal').modal().show();
            }
        </script>

</body>

</html>