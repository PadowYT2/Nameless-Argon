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
                    <h1 class="text-white">{$IP_LOOKUP}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$COUNT_ACCOUNTS}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a class="btn btn-warning"
                                    href="{$BACK_LINK}">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <ul>
                        {if isset($IP_SEARCH)}
                        {foreach from=$ACCOUNTS item=account}
                        <li><a href="{$account.account_ips}" style="{$account.style}">{$account.username}</a>
                        </li>
                        {/foreach}
                        {else}
                        {foreach from=$ACCOUNTS item=account}
                        <li><a href="{$account.link}">{$account.ip}</a></li>
                        {/foreach}
                        {/if}
                    </ul>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}
    </div>
    {include file='scripts.tpl'}

</body>

</html>