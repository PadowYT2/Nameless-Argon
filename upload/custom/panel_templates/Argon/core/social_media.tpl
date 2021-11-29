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
                    <h1 class="text-white">{$SOCIAL_MEDIA}</h1>
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
                            <label for="InputYoutube">{$YOUTUBE_URL}</label>
                            <input type="text" name="youtubeurl" class="form-control" id="InputYoutube"
                                placeholder="{$YOUTUBE_URL}" value="{$YOUTUBE_URL_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputTwitter">{$TWITTER_URL}</label>
                            <input type="text" name="twitterurl" class="form-control" id="InputTwitter"
                                placeholder="{$TWITTER_URL}" value="{$TWITTER_URL_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputTwitterStyle">{$TWITTER_STYLE}</label>
                            <input id="InputTwitterStyle" name="twitter_dark_theme" type="checkbox" class="js-switch"
                                value="1" {if $TWITTER_STYLE_VALUE eq 'dark' } checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="InputDiscord">{$DISCORD_SERVER_ID}</label>
                            <input type="text" name="discordid" class="form-control" id="InputDiscord"
                                placeholder="{$DISCORD_SERVER_ID}" value="{$DISCORD_SERVER_ID_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputFacebook">{$FACEBOOK_URL}</label>
                            <input type="text" name="fburl" class="form-control" id="InputFacebook"
                                placeholder="{$FACEBOOK_URL}" value="{$FACEBOOK_URL_VALUE}">
                        </div>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </form>


                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>