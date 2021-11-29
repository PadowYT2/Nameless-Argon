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
                    <h1 class="text-white">{$SERVER_BANNERS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$SERVER_NAME}</h3>
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
                        <label for="inputBanner">{$BANNER_BACKGROUND}</label>
                        <select name="banner" id="inputBanner" class="image-picker show-html">
                            {foreach from=$IMAGES item=image}
                            <option data-img-src="{$image.src}" value="{$image.value}" {if $image.selected}
                                selected{/if}>{$image.n}</option>
                            {/foreach}
                        </select>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </form>

                </div>
            </div>

        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>