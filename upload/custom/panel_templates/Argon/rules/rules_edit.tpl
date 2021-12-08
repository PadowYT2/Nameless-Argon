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
                    <h1 class="text-white">{$RULES}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDIT_CATAGORY}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputCatagoryName">{$RULES_CATAGORY_NAME}</label>
                            <input type="text" id="InputCatagoryName" placeholder="{$RULES_CATAGORY_NAME}"
                                name="rules_catagory_name" class="form-control" value="{$RULES_CATAGORY_NAME_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputCatagoryIcon">{$RULES_CATAGORY_ICON}</label>
                            <input type="text" id="InputCatagoryIcon" placeholder="{$RULES_CATAGORY_ICON}"
                                name="rules_catagory_icon" class="form-control" value="{$RULES_CATAGORY_ICON_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputCatagoryRules">{$RULES_CATAGORY_RULES}</label>
                            <textarea name="rules_catagory_rules" rows="3" id="InputCatagoryRules" class="form-control"
                                placeholder="{$RULES_CATAGORY_RULES}">{$RULES_CATAGORY_RULES_VALUE}</textarea>
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