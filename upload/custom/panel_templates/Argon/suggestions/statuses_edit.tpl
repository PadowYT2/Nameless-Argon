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
                    <h1 class="text-white">{$STATUSES}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_STATUS}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputName">{$STATUS_NAME}</label>
                            <input type="text" name="name" class="form-control" id="InputName"
                                placeholder="{$STATUS_NAME}" value="{$STATUS_NAME_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputName">{$STATUS_HTML}</label>
                            <input type="text" name="html" class="form-control" id="InputHTML"
                                placeholder="{$STATUS_HTML}" value="{$STATUS_HTML_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="inputOpen">{$MARKED_AS_OPEN}</label>
                            <input id="inputOpen" name="open" type="checkbox" class="js-switch" {if
                                $MARKED_AS_OPEN_VALUE eq 1} checked{/if} />
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