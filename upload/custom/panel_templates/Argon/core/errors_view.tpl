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
                    <h1 class="text-white">{$LOG_NAME}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}
            <div class="card">
                <div class="card-body">
                    <a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
                    <hr/>

                    {if isset($LOG)}
                        <pre class="error_log">
                                {$LOG}
                            </pre>
                        <hr/>
                        <h5>{$ACTIONS}</h5>
                        <a class="btn btn-warning" onclick="showPurgeModal()">{$PURGE_LOG}</a>
                    {else}
                        {$NO_LOG_FOUND}
                    {/if}

                </div>
            </div>

        </div>

        {include file='footer.tpl'}

    </div>
</div>

<div class="modal fade" id="purgeModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                {$CONFIRM_PURGE_ERRORS}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                <a href="{$PURGE_LOG_LINK}" class="btn btn-info">{$YES}</a>
            </div>
        </div>
    </div>
</div>

{include file='scripts.tpl'}

<script type="text/javascript">
    function showPurgeModal() {
        $('#purgeModal').modal().show();
    }
</script>

</body>
</html>