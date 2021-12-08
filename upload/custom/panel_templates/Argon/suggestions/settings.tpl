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
                    <h1 class="text-white">{$SETTINGS}</h1>
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

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="link_location">{$LINK_LOCATION}</label>
                            <select class="form-control" id="link_location" name="link_location">
                                <option value="1" {if $LINK_LOCATION_VALUE eq 1} selected{/if}>{$LINK_NAVBAR}</option>
                                <option value="2" {if $LINK_LOCATION_VALUE eq 2} selected{/if}>{$LINK_MORE}</option>
                                <option value="3" {if $LINK_LOCATION_VALUE eq 3} selected{/if}>{$LINK_FOOTER}</option>
                                <option value="4" {if $LINK_LOCATION_VALUE eq 4} selected{/if}>{$LINK_NONE}</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="inputIcon">{$ICON}</label>
                            <input type="text" class="form-control" name="icon" id="inputIcon"
                                placeholder="{$ICON_EXAMPLE}" value="{$ICON_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="premium">Premium Plan (Check <a href="https://partydragen.com/subscribe/"
                                    target="_blank">https://partydragen.com/subscribe/</a> for more details)</label>
                            <select class="form-control" id="premium" name="premium" disabled>
                                <option value="0" {if !$PREMIUM} selected{/if}>Free Plan</option>
                                <option value="1" {if $PREMIUM} selected{/if}>Premium Plan}</option>
                            </select>
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