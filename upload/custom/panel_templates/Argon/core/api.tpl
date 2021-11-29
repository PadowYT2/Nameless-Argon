{include file='header.tpl'}

<body>
    {include file='sidebar.tpl'}

    <div class="main-content">
        {include file='navbar.tpl'}

        <!-- Header -->
        <div class="header bg-gradient-info pb-9 pt-5 pt-md-7">
            <div class="container-fluid">
                <div class="header-body">
                    <h1 class="text-white">{$API}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a class="btn btn-info" href="{$API_ENDPOINTS_LINK}">{$API_ENDPOINTS}</a>
                    <a class="btn btn-info" href="{$GROUP_SYNC_LINK}">{$GROUP_SYNC}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="alert alert-info">
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}
                        </h5>
                        {$API_INFO}
                    </div>

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputAPIKey">{$API_KEY}</label>
                            <div class="input-group">
                                <input type="text" name="api_key" id="InputAPIKey" class="form-control" readonly
                                    value="{if $API_ENABLED}{$API_KEY_VALUE}{else}{$ENABLE_API_FOR_URL}{/if}">
                                {if $API_ENABLED}
                                <span class="input-group-append"><a onclick="showRegenModal();"
                                        class="btn btn-info text-white">{$CHANGE}</a></span>
                                {/if}
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="InputAPIURL">{$API_URL}</label>
                            <div class="input-group">
                                <input type="text" name="api_url" id="InputAPIURL" class="form-control" readonly
                                    value="{if $API_ENABLED}{$API_URL_VALUE}{else}{$ENABLE_API_FOR_URL}{/if}">
                                {if $API_ENABLED}
                                <span class="input-group-append"><a onclick="copyURL();"
                                        class="btn btn-info text-white">{$COPY}</a></span>
                                {/if}
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="enable_api" style="margin-right:10px">{$ENABLE_API}</label>
                            <input type="hidden" name="enable_api" value="0">
                            <input id="enable_api" name="enable_api" type="checkbox" class="js-switch" value="1" {if
                                $API_ENABLED eq 1} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="verification" style="margin-right:10px">{$EMAIL_VERIFICATION}</label>
                            <input name="verification" id="verification" type="checkbox" data-html="true"
                                class="js-switch" {if $EMAIL_VERIFICATION_VALUE eq 1} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="api_verification">{$API_VERIFICATION}</label> <span class="badge badge-info"
                                style="margin-right:10px" data-toggle="popover" data-title="{$INFO}"
                                data-content="{$API_VERIFICATION_INFO}" data-html="true"><i
                                    class="fas fa-question-circle"></i></span>
                            <input name="api_verification" id="api_verification" type="checkbox" class="js-switch" {if
                                $API_VERIFICATION_VALUE eq 1} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="username_sync">{$USERNAME_SYNC}</label> <span class="badge badge-info"
                                style="margin-right:10px" data-toggle="popover" data-html="true" data-title="{$INFO}"
                                data-content="{$USERNAME_SYNC_INFO}"><i class="fas fa-question-circle"></i></span>
                            <input name="username_sync" id="username_sync" type="checkbox" class="js-switch" {if
                                $USERNAME_SYNC_VALUE eq 1} checked{/if} />
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
    </div>

    <!-- Key regen modal -->
    <div class="modal fade" id="regenModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{$ARE_YOU_SURE}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$CONFIRM_API_REGEN}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                    <a href="{$API_KEY_REGEN_URL}" class="btn btn-info">{$YES}</a>
                </div>
            </div>
        </div>
    </div>

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showRegenModal() {
            $('#regenModal').modal().show();
        }

        function copyURL() {
            let url = document.getElementById("InputAPIURL");
            url.select();
            document.execCommand("copy");

            // Toastr
            toastr.options.progressBar = true;
            toastr.options.closeButton = true;
            toastr.options.positionClass = 'toast-bottom-left';
            toastr.success("{$COPIED}");
        }
    </script>

</body>

</html>