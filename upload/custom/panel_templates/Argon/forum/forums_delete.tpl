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
                    <h1 class="text-white">{$FORUMS}</h1>
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
                            <label for="inputNewForum">{$MOVE_TOPICS_AND_POSTS_TO}</label>
                            <select id="inputNewForum" class="form-control" name="move_forum">
                                <option value="none" selected>{$DELETE_TOPICS_AND_POSTS}</option>
                                {foreach from=$OTHER_FORUMS item=item}
                                <option value="{$item.id}">{$item.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="confirm" value="true">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}" />
                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}


        {include file='scripts.tpl'}

</body>

</html>