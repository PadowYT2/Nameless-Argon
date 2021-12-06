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
                    <h1 class="text-white">{$CRAFTINGSTORE}</h1>
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
                            <label for="inputSecretKey">{$SERVER_KEY}</label>
                            <span class="badge badge-info" data-html="true" data-toggle="popover" title="{$INFO}"
                                data-content="{$SERVER_KEY_INFO}"><i class="fas fa-question-circle"></i></span>
                            <input id="inputSecretKey" name="server_key" class="form-control"
                                placeholder="{$SERVER_KEY}" value="{$SERVER_KEY_VALUE}">
                        </div>

                        <div class="form-group">
                            <label for="store_path">{$STORE_PATH}</label>
                            <input type="text" class="form-control" id="store_path" name="store_path"
                                placeholder="{$STORE_PATH}" value="{$STORE_PATH_VALUE}">
                        </div>

                        <div class="form-group">
                            <label for="inputStoreContent">{$STORE_INDEX_CONTENT}</label>
                            <textarea id="inputStoreContent" name="store_content"
                                class="form-control">{$STORE_INDEX_CONTENT_VALUE}</textarea>
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                        </div>
                    </form>

                </div>
            </div>

            {include file='footer.tpl'}

            {include file='scripts.tpl'}

</body>

</html>