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
                    <div class="row">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$DELETE_CATEGORY}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form role="form" action="" method="post">
                        <div class="form-group">
                            <label for="inputMoveResourcesTo">{$MOVE_RESOURCES_TO}</label>
                            <select id="inputMoveResourcesTo" class="form-control" name="move_resources">
                                <option value="none" selected>{$DELETE_RESOURCES}</option>
                                {foreach from=$CATEGORIES_LIST item=category}
                                <option value="{$category->id|escape}">{$category->name|escape}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="confirm" value="true">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-danger">
                        </div>
                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>