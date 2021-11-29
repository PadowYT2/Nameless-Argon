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
                    <h1 class="text-white">{$PAGE_METADATA}</h1>
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


                    <h5 style="display:inline">{$EDITING_PAGE}</h5>

                    <div class="float-md-right">
                        <a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
                    </div>

                    <hr />

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputDescription">{$DESCRIPTION}</label>
                            <textarea class="form-control" name="description"
                                id="inputDescription">{$DESCRIPTION_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="inputKeywords">{$KEYWORDS}</label>
                            <input type="text" class="form-control" name="keywords" id="inputKeywords"
                                value="{$KEYWORDS_VALUE}" placeholder="{$KEYWORDS}">
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
        {include file='scripts.tpl'}

</body>

</html>