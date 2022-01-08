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
                    <h1 class="text-white">{$EMAILS_MASS_MESSAGE}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a class="btn btn-info" href="{$BACK_LINK}">{$BACK}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputSubject">{$SUBJECT}</label>
                            <input class="form-control" type="text" name="subject" id="inputSubject">
                        </div>
                        <div class="form-group">
                            <label for="inputContent">{$CONTENT} <span class="badge badge-info"><i
                                        class="fa fa-lightbulb" data-container="body" data-toggle="popover"
                                        title="{$INFO}" data-content="{$REPLACEMENT_INFO}"></i></span></label>
                            {if isset($MARKDOWN)}
                            <div class="field">
                                <textarea name="content" id="markdown"></textarea>
                            </div>
                            {else}
                            <div class="field">
                                <textarea name="content" id="reply"></textarea>
                            </div>
                            {/if}
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}"
                                onclick="$('#loading').css('visibility', 'visible');">
                            <strong style="visibility:hidden; color:orange;" id="loading">{$LOADING}</strong>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>