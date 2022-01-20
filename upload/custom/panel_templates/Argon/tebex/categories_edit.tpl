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
                    <h1 class="text-white">{$CATEGORIES}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_CATEGORY}</h3>
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

                    <form action="" method="post">
                        <div class="form-group">
                            <strong><label for="inputDescription">{$CATEGORY_DESCRIPTION}</label></strong>
                            <textarea id="inputDescription" name="description">{$CATEGORY_DESCRIPTION_VALUE}</textarea>
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <strong>{$CATEGORY_IMAGE}</strong><br />
                            {if $CATEGORY_IMAGE_VALUE}
                            <img src="{$CATEGORY_IMAGE_VALUE}" alt="{$CATEGORY_NAME}"
                                style="max-height:200px;max-width:200px;"><br />
                            {/if}
                            <strong>{$UPLOAD_NEW_IMAGE}</strong><br />
                            <label class="btn btn-secondary">
                                {$BROWSE} <input type="file" name="store_image" hidden />
                            </label>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="image">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                        </div>
                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>