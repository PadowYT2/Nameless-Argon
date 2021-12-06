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
                    <h1 class="text-white">{$UP}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($PHP_WARNING)}
                    <div class="alert bg-danger text-white">{$PHP_WARNING}</div>
                    {/if}

                    {if !isset($PREVENT_UPGRADE)}
                    {if isset($NEW_UPDATE)}
                    <div class="alert {if $NEW_UPDATE_URGENT eq true}bg-danger{else}bg-info{/if} text-white">
                        {$NEW_UPDATE}
                        <hr />
                        {$CURRENT_VERSION}<br />
                        {$NEW_VERSION}
                    </div>
                    <h4>{$INSTRUCTIONS}</h4>
                    <p>{$INSTRUCTIONS_VALUE}</p>
                    <hr />
                    <a href="{$DOWNLOAD_LINK}" class="btn btn-info">{$DOWNLOAD}</a>
                    <button class="btn btn-info" type="button" onclick="showConfirmModal()">{$UPDATE}</button>
                    {else}
                    <div class="alert alert-success">
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-check"></i> {$UP_TO_DATE}
                        </h5>
                    </div>
                    <a href="{$CHECK_AGAIN_LINK}" class="btn btn-info">{$CHECK_AGAIN}</a>
                    {/if}
                    {/if}

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    <div class="modal fade" id="confirmModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">{$WARNING}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$INSTALL_CONFIRM}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{$CANCEL}</button>
                    <a href="{$UPGRADE_LINK}" class="btn btn-info">{$UPDATE}</a>
                </div>
            </div>
        </div>
    </div>
    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showConfirmModal() {
            $('#confirmModal').modal().show();
        }
    </script>

</body>

</html>