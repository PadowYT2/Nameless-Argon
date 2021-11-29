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
                    <h1 class="text-white">{$HOOKS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_HOOK}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form role="form" action="" method="post">
                        <div class="form-group">
                            <label for="InputName">{$HOOK_NAME}</label>
                            <input type="text" name="hook_name" class="form-control" id="InputName"
                                value="{$HOOK_NAME_VALUE}" placeholder="{$HOOK_NAME_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputURL">{$HOOK_URL}</label>
                            <input type="text" name="hook_url" class="form-control" id="InputURL"
                                value="{$HOOK_URL_VALUE}" placeholder="https://example.com/examplelistener">
                        </div>
                        <div class="form-group">
                            <label for="link_location">{$HOOK_TYPE}</label>
                            <select class="form-control" id="hook_type" name="hook_type">
                                <option value="2" {if $HOOK_TYPE_VALUE eq 2} selected{/if}>Discord</option>
                            </select>
                        </div>
                        <label for="InputName">{$HOOK_EVENTS}</label>
                        {foreach from=$ALL_HOOKS key=key item=item}
                        <div class="form-group">
                            {$item|escape} <input type="checkbox" name="events[{$key|escape}]" class="js-switch"
                                value="1" {if in_array($key|escape, $ENABLED_HOOKS)} checked{/if}>
                            </br>
                        </div>
                        {/foreach}
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                </div>
            </div>

        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>