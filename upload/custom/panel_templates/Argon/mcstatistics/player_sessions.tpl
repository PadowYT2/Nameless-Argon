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
                    <h1 class="text-white">{$GENERAL_SETTINGS}</h1>
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
                    <div class="card">
                        <div class="card-body">
                            <ul class="nav nav-pills">
                                <li class="nav-item">
                                    <a class="nav-link" href="{$DETAILS_LINK}">{$DETAILS}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active">{$SESSIONS}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{$IP_HISTORY_LINK}">{$IP_HISTORY}</a>
                                </li>
                            </ul>
                            <hr />

                            {if count($SESSIONS_LIST)}
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>{$SESSION_START}</th>
                                            <th>{$SESSION_END}</th>
                                            <th>{$PLAY_TIME}</th>
                                            <th>{$VERSION}</th>
                                            <th>{$IP_ADDRESS}</th>
                                        </tr>
                                    </thead>
                                    <tbody id="sortable">
                                        {foreach from=$SESSIONS_LIST item=session}
                                        <tr data-id="{$server.id}">
                                            <td>{$session.session_start}</td>
                                            <td>{$session.session_end}</td>
                                            <td>{$session.play_time}</td>
                                            <td>{$session.version}</td>
                                            <td>{$session.ip}</td>
                                        </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                            </div>
                            {else}
                            <p>{$NO_DATA_AVAILABLE}</p>
                            {/if}

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