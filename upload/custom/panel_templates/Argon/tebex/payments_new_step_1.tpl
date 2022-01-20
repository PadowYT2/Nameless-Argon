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
                    <h1 class="text-white">{$PAYMENTS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$NEW_PAYMENT}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <button type="button" onclick="showCancelModal()"
                                    class="btn btn-warning">{$CANCEL}</button>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($NO_PACKAGES)}
                    <p>{$NO_PACKAGES}</p>
                    {else}
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputIGN">{$IGN}</label>
                            <input type="text" class="form-control" id="inputIGN" name="ign" placeholder="{$IGN}">
                        </div>
                        <div class="form-group">
                            <label for="inputPackage">{$PACKAGE}</label>
                            <select class="form-control" id="inputPackage" name="package">
                                {foreach from=$PACKAGES item=item}
                                <option value="{$item.id}">{$item.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>
                    {/if}

                </div>
            </div>
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

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showCancelModal() {
                $('#cancelModal').modal().show();
            }
        </script>

</body>

</html>