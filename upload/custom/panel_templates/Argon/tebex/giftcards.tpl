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
                    <h1 class="text-white">{$GIFT_CARDS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a class="btn btn-info" href="{$NEW_GIFT_CARD_LINK}">{$NEW_GIFT_CARD}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($NO_GIFT_CARDS)}
                    <p>{$NO_GIFT_CARDS}</p>
                    {else}
                    <div class="table-responsive">
                        <table class="table table-striped dataTables-giftcards">
                            <thead>
                                <tr>
                                    <th>{$GIFT_CARD_CODE}</th>
                                    <th>{$GIFT_CARD_NOTE}</th>
                                    <th>{$GIFT_CARD_BALANCE_REMAINING}</th>
                                    <th>{$GIFT_CARD_ACTIVE}</th>
                                    <th>{$VIEW}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$ALL_GIFT_CARDS item=giftcard}
                                <tr>
                                    <td>{$giftcard.code}</td>
                                    <td>{$giftcard.note}</td>
                                    <td>{$giftcard.remaining}</td>
                                    <td>{if $giftcard.void}<i class="fas fa-times-circle fa-2x text-danger"></i>{else}<i
                                            class="fas fa-check-circle fa-2x text-success"></i>{/if}</td>
                                    <td><a href="{$giftcard.view_link}" class="btn btn-info btn-sm">{$VIEW}</a></td>
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