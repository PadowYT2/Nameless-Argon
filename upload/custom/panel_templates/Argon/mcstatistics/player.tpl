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
                    <h1 class="text-white">{$USERNAME_VALUE}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <!-- Success and Error Alerts -->
            {include file='includes/alerts.tpl'}

            <div class="row">
                <div class="col-md-3">
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="text-center">
                                <img class="profile-user-img rounded-circle" src="{$AVATAR}" alt="{$USERNAME}">
                            </div>

                            <h4 class="text-center" style="{$USER_STYLE}">{$USERNAME_VALUE}</h4>
                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item">
                                    <b>{$REGISTERED}</b><br />{$REGISTERED_VALUE}
                                </li>
                                <li class="list-group-item">
                                    <b>{$LAST_SEEN}</b><br /><span data-toggle="tooltip"
                                        data-title="{$LAST_SEEN_FULL_VALUE}">{$LAST_SEEN_SHORT_VALUE}</span>
                                </li>
                                <li class="list-group-item">
                                    <b>{$PLAY_TIME}</b><br />{$PLAY_TIME_VALUE}
                                </li>
                                <li class="list-group-item">
                                    <b>{$LAST_IP}</b><br />{$LAST_IP_VALUE}
                                </li>
                                <li class="list-group-item">
                                    <b>{$LAST_VERSION}</b><br />{$LAST_VERSION_VALUE}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <ul class="nav nav-pills">
                                <li class="nav-item">
                                    <a class="nav-link active">{$DETAILS}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{$SESSIONS_LINK}">{$SESSIONS}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{$IP_HISTORY_LINK}">{$IP_HISTORY}</a>
                                </li>
                            </ul>
                            <hr />
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="username">{$USERNAME}</label>
                                        <input id="username" type="text" class="form-control" value="{$USERNAME_VALUE}"
                                            readonly>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="uuid">{$UUID}</label>
                                        <input id="uuid" type="text" class="form-control" value="{$UUID_VALUE}"
                                            readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="kills">{$KILLS}</label>
                                        <input id="kills" type="text" class="form-control" value="{$KILLS_VALUE}"
                                            readonly>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="deaths">{$DEATHS}</label>
                                        <input id="deaths" type="text" class="form-control" value="{$DEATHS_VALUE}"
                                            readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="blocks_placed">{$BLOCKS_PLACED}</label>
                                        <input id="blocks_placed" type="text" class="form-control"
                                            value="{$BLOCKS_PLACED_VALUE}" readonly>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="blocks_destroyed">{$BLOCKS_DESTROYED}</label>
                                        <input id="blocks_destroyed" type="text" class="form-control"
                                            value="{$BLOCKS_DESTROYED_VALUE}" readonly>
                                    </div>
                                </div>
                            </div>
                            <center>
                                <p>MCStatistics Module by <a href="https://partydragen.com/"
                                        target="_blank">Partydragen</a></br>
                                    Data provided by <a href="https://mcstatistics.org/"
                                        target="_blank">MCStatistics</a></p>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>