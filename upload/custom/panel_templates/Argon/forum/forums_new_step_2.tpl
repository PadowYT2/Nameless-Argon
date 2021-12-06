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
                            <label for="InputParent">{$SELECT_PARENT_FORUM}</label>
                            <select class="form-control" id="InputParent" name="parent">
                                {foreach from=$PARENT_FORUMS item=item}
                                <option value="{$item.id}">{$item.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="InputNews">{$DISPLAY_TOPICS_AS_NEWS}</label>
                            <input type="hidden" name="news_forum" value="0">
                            <input name="news_forum" id="InputNews" type="checkbox" class="js-switch" value="1" />
                        </div>
                        <div class="form-group">
                            <label for="InputForumRedirect">{$REDIRECT_FORUM}</label>
                            <input type="hidden" name="redirect" value="0">
                            <input name="redirect" id="InputForumRedirect" type="checkbox" class="js-switch"
                                value="1" />
                        </div>
                        <div class="form-group">
                            <label for="InputForumRedirectURL">{$REDIRECT_URL}</label>
                            <input placeholder="{$REDIRECT_URL}" name="redirect_url" id="InputForumRedirectURL"
                                type="text" class="form-control" value="{$REDIRECT_URL_VALUE}" />
                        </div>
                        <div class="form-group">
                            <label for="InputHooks">{$INCLUDE_IN_HOOK} <span class="badge badge-info"
                                    data-toggle="popover" data-title="{$INFO}" data-content="{$HOOK_SELECT_INFO}"><i
                                        class="fa fa-question"></i></label>
                            <select name="hooks[]" id="InputHooks" class="form-control" multiple>
                                {foreach from=$HOOKS_ARRAY item=hook}
                                <option value="{$hook.id}">{$hook.name|ucfirst}</option>
                                {/foreach}
                            </select>
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