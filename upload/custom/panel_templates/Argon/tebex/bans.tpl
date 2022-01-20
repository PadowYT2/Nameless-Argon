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
                    <h1 class="text-white">{$BANS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    {if isset($NEW_BAN)}
                    <a class="btn btn-info" href="{$NEW_BAN_LINK}">{$NEW_BAN}</a>
                    <hr />
                    {/if}

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($NO_BANS)}
                    <p>{$NO_BANS}</p>
                    {else}
                    <div class="table-responsive">
                        <table class="table table-bordered dataTables-bans">
                            <colgroup>
                                <col span="1" style="width: 35%;">
                                <col span="1" style="width: 30%;">
                                <col span="1" style="width: 20%">
                                <col span="1" style="width: 15%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>{$USER}</th>
                                    <th>{$IP_ADDRESS}</th>
                                    <th>{$DATE}</th>
                                    <th>{$VIEW}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$BAN_LIST item=ban}
                                <tr>
                                    <td><img src="{$ban.avatar}" class="rounded" style="max-width:25px;max-height:25px;"
                                            alt="{$ban.ign}" /> <span style="{$ban.style}">{$ban.ign}</span></td>
                                    <td>{$ban.ip}</td>
                                    <td data-sort="{$ban.date_unix}">{$ban.date}</td>
                                    <td>
                                        <a href="{$ban.link}" class="btn btn-info">{$VIEW}</a>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>