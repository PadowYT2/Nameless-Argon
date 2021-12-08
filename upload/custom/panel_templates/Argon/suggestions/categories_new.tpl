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
                    <h1 class="text-white">{$SUGGESTIONS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CREATING_NEW_CATEGORY}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form role="form" action="" method="post">
                        <div class="form-group">
                            <label for="InputName">{$CATEGORY_NAME}</label>
                            <input type="text" name="name" class="form-control" id="InputName"
                                placeholder="{$CATEGORY_NAME}">
                        </div>
                        <div class="form-group">
                            <label for="InputOrder">{$CATEGORY_ORDER}</label>
                            <input type="number" min="1" class="form-control" id="InputOrder" name="order" value="1">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                    {if !$PREMIUM}
                    <center>
                        <p>Suggestion Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p>
                    </center>
                    {/if}
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>