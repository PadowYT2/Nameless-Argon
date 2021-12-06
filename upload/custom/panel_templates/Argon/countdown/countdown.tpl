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
                    <h1 class="text-white">{$COUNTDOWN}</h1>
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

                        <form action="" method="post">
                            <div class="form-group">
                                <label for="name">{$COUNTDOWN_NAME}</label>
                                <input type="text" id="name" name="name" value="{$COUNTDOWN_NAME_VALUE}" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="description">{$COUNTDOWN_DESCRIPTION}</label>
                                <textarea id="description" name="description" class="form-control">{$COUNTDOWN_DESCRIPTION_VALUE}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="expires">{$COUNTDOWN_EXPIRES}</label>
                                <input type="datetime-local" id="expires" name="expires" value="{$COUNTDOWN_EXPIRES_VALUE}" min="{$COUNTDOWN_EXPIRES_MIN}" class="form-control" />
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" class="btn btn-info" value="{$SUBMIT}" />
                            </div>
                        </form>

                    </div>
                </div>
        </div>

        {include file='footer.tpl'}


{include file='scripts.tpl'}

</body>

</html>