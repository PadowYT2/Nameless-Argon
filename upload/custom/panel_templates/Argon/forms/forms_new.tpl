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
                    <h1 class="text-white">{$FORMS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">

                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-9">
                                    <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CREATING_NEW_FORM}</h3>
                                </div>
                                <div class="col-md-3">
                                    <span class="float-md-right"><a class="btn btn-warning"
                                            href="{$BACK_LINK}">{$BACK}</a></span>
                                </div>
                            </div>
                            <hr>

                            <!-- Success and Error Alerts -->
                            {include file='includes/alerts.tpl'}

                            <form role="form" action="" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="InputName">{$FORM_NAME}</label>
                                            <input type="text" name="form_name" class="form-control" id="InputName"
                                                placeholder="{$FORM_NAME}" value="{$FORM_NAME_VALUE}">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputUrl">{$FORM_URL}</label>
                                            <input type="text" name="form_url" class="form-control" id="InputURL"
                                                placeholder="{$FORM_URL}" value="{$FORM_URL_VALUE}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="InputUrl">{$FORM_ICON}</label>
                                            <input type="text" name="form_icon" class="form-control" id="InputIcon"
                                                placeholder="{$FORM_ICON}" value="{$FORM_ICON_VALUE}">
                                        </div>
                                        <div class="form-group">
                                            <label for="link_location">{$FORM_LINK_LOCATION}</label>
                                            <select class="form-control" id="link_location" name="link_location">
                                                <option value="1" {if $LINK_LOCATION_VALUE eq 1} selected{/if}>
                                                    {$LINK_NAVBAR}</option>
                                                <option value="2" {if $LINK_LOCATION_VALUE eq 2} selected{/if}>
                                                    {$LINK_MORE}</option>
                                                <option value="3" {if $LINK_LOCATION_VALUE eq 3} selected{/if}>
                                                    {$LINK_FOOTER}</option>
                                                <option value="4" {if $LINK_LOCATION_VALUE eq 4} selected{/if}>
                                                    {$LINK_NONE}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="inputContent">{$CONTENT}</label>
                                            <textarea name="content" id="inputContent">{$CONTENT_VALUE}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="InputCaptcha">{$ENABLE_CAPTCHA}</label>
                                            <input name="username_sync" id="username_sync" type="checkbox"
                                                class="js-switch" {if $USERNAME_SYNC_VALUE eq 1} checked{/if} />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                    <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                                </div>
                            </form>

                            <center>
                                <p>Forms Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a>
                                </p>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}


        {include file='scripts.tpl'}

</body>

</html>