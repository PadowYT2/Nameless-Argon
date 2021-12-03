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
                        <div class="row">
                            <div class="col-md-9">
                                <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CREATING_LABEL_TYPE}</h3>
                            </div>
                            <div class="col-md-3">
                                <span class="float-md-right"><button class="btn btn-warning" onclick="showCancelModal()"
                                                                     type="button">{$CANCEL}</button></span>
                            </div>
                        </div>
                        <hr />

                        <!-- Success and Error Alerts -->
                        {include file='includes/alerts.tpl'}

                        <form action="" method="post">
                            <div class="form-group">
                                <label for="label_type_name">{$LABEL_TYPE_NAME}</label>
                                <input type="text" name="label_name" placeholder="Primary" id="label_type_name"
                                       class="form-control" value="{$LABEL_TYPE_NAME_VALUE}">
                            </div>
                            <div class="form-group">
                                <label for="label_html">{$LABEL_TYPE_HTML}</label> <span class="badge badge-info"><i
                                            class="fas fa-question-circle" data-container="body" data-toggle="popover"
                                            data-placement="top" title="{$INFO}"
                                            data-content="{$LABEL_TYPE_HTML_INFO}"></i></span><br />
                                <input type="text" name="label_html"
                                       placeholder="<span class=&quot;badge badge-info&quot;>{literal}{x}{/literal}</span>"
                                       id="label_type_html" class="form-control" value="{$LABEL_TYPE_HTML_VALUE}">
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