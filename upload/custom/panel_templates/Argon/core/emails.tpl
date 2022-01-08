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
                    <h1 class="text-white">{$EMAILS}</h1>
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
                    {if isset($MASS_MESSAGE_LINK)}
                    <a href="{$MASS_MESSAGE_LINK}" class="btn btn-info">{$MASS_MESSAGE}</a>
                    {/if}
                    <a href="{$EDIT_EMAIL_MESSAGES_LINK}" class="btn btn-info">{$EDIT_EMAIL_MESSAGES}</a>
                    <a href="{$EMAIL_ERRORS_LINK}" class="btn btn-info">{$EMAIL_ERRORS}</a>
                    <a href="{$SEND_TEST_EMAIL_LINK}" class="btn btn-info">{$SEND_TEST_EMAIL}</a>

                    <hr />

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputOutgoingEmail">{$OUTGOING_EMAIL}</label>
                            <span class="badge badge-info"><i class="fa fa-question-circle" data-container="body"
                                    data-toggle="popover" title="{$INFO}"
                                    data-content="{$OUTGOING_EMAIL_INFO}"></i></span>
                            <input type="text" id="InputOutgoingEmail" name="email" value="{$OUTGOING_EMAIL_VALUE}"
                                class="form-control">
                        </div>
                        <hr />
                        <div class="alert alert-info">
                            <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}
                            </h5>
                            <p>{$MAILER_SETTINGS_INFO}</p>
                        </div>
                        <br />
                        <div class="form-group">
                            <label for="inputMailer">{$ENABLE_MAILER}</label>
                            <span class="badge badge-info"><i class="fa fa-question-circle" data-container="body"
                                    data-toggle="popover" title="{$INFO}"
                                    data-content="{$ENABLE_MAILER_HELP}"></i></span>
                            <input type="hidden" name="enable_mailer" value="0">
                            <input id="inputMailer" name="enable_mailer" type="checkbox" class="js-switch" value="1" {if
                                $ENABLE_MAILER_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="inputUsername">{$USERNAME}</label>
                            <input class="form-control" type="text" name="username" value="{$USERNAME_VALUE}"
                                id="inputUsername">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">{$PASSWORD}</label>
                            <span class="badge badge-info"><i class="fa fa-question-circle" data-container="body"
                                    data-toggle="popover" title="{$INFO}" data-content="{$PASSWORD_HIDDEN}"></i></span>
                            <input class="form-control" type="password" name="password" id="inputPassword">
                        </div>
                        <div class="form-group">
                            <label for="inputName">{$NAME}</label>
                            <input class="form-control" type="text" name="name" value="{$NAME_VALUE}" id="inputName">
                        </div>
                        <div class="form-group">
                            <label for="inputHost">{$HOST}</label>
                            <input class="form-control" type="text" name="host" value="{$HOST_VALUE}" id="inputHost">
                        </div>
                        <div class="form-group">
                            <label for="inputPort">{$PORT}</label>
                            <input class="form-control" type="text" name="port" value="{$PORT_VALUE}" id="inputPort">
                        </div>
                        <hr />
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

    {include file='scripts.tpl'}

</body>

</html>