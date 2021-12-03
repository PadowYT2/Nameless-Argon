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
                    <h1 class="text-white">{$SEO}</h1>
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

                    <h4>{$GOOGLE_ANALYTICS}</h4>
                    <p>{$GOOGLE_ANALYTICS_HELP}</p>

                    <form action="" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="analyticsid" id="inputAnalyticsId"
                                placeholder="Google Analytics ID" value="{$GOOGLE_ANALYTICS_VALUE}">
                        </div>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="type" value="google_analytics">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </form>

                    <hr />

                    <h4>{$SITEMAP}</h4>
                    {if isset($SITEMAP_LAST_GENERATED)}
                    <p>{$SITEMAP_LAST_GENERATED}</p>
                    <p>{$LINK}<br /><code>{$SITEMAP_FULL_LINK}</code></p>
                    <form action="" method="post">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="type" value="sitemap">
                        <input type="submit" class="btn btn-info" value="{$GENERATE}">
                        <a href="{$SITEMAP_LINK}" class="btn btn-info" download
                            style="color:#fff;text-decoration:none">{$DOWNLOAD_SITEMAP}</a>
                    </form>
                    {else}
                    <p>{$SITEMAP_NOT_GENERATED}</p>
                    <form action="" method="post">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="type" value="sitemap">
                        <input type="submit" class="btn btn-info" value="{$GENERATE}">
                    </form>
                    {/if}

                    <hr />

                    <h4 style="display:inline;">{$PAGE_METADATA}</h4>
                    <div class="table-responsive">
                        <table class="table table-striped dataTables-pages">
                            <thead>
                                <tr>
                                    <th>{$PAGE_TITLE}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$PAGE_LIST key=key item=item}
                                <tr>
                                    <td><a href="{$EDIT_LINK|replace:'{x}':$item.id}">{$key|escape}</a></td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>