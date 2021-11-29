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
                    <h1 class="text-white">{$PLACEHOLDERS}</h1>
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
                            <p style="margin-top: 7px; margin-bottom: 7px;">{$PLACEHOLDER_LEADERBOARD_INFO}</p>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-info">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="POST">

                        <input type="hidden" name="token" value="{$TOKEN}">

                        <div class="form-group">
                            <label for="leaderboard_enabled">
                                {$LEADERBOARD_ENABLED}
                                <span class="badge badge-info" data-toggle="popover" data-title="{$INFO}"
                                    data-content="{$ENABLED_INFO}"><i class="fa fa-question"></i>
                            </label>
                            <input type="checkbox" class="js-switch" name="leaderboard_enabled" {if
                                $PLACEHOLDER->leaderboard eq 1} checked {/if}>
                        </div>

                        <div class="form-group">
                            <label for="leaderboard_title">{$LEADERBOARD_TITLE}</label>
                            <input type="text" name="leaderboard_title" class="form-control"
                                value="{$PLACEHOLDER->leaderboard_title}">
                        </div>

                        <div class="form-group">
                            <label for="leaderboard_sort">{$LEADERBOARD_SORT}</label>
                            <select name="leaderboard_sort" class="form-control">
                                <option value="ASC" {if $PLACEHOLDER->leaderboard_sort eq 'ASC'} selected
                                    {/if}>Ascending</option>
                                <option value="DESC" {if $PLACEHOLDER->leaderboard_sort eq 'DESC'} selected
                                    {/if}>Descending</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-info">{$SUBMIT}</button>

                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>