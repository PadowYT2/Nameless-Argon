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
                    <h1 class="text-white">{$COUPONS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    {if isset($NEW_COUPON)}
                    <a href="{$NEW_COUPON_LINK}" class="btn btn-info">{$NEW_COUPON}</a>
                    <hr />
                    {/if}

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($NO_COUPONS)}
                    <p>{$NO_COUPONS}</p>
                    {else}
                    <div class="table-responsive">
                        <table class="table table-bordered dataTables-coupons">
                            <colgroup>
                                <col span="1" style="width: 35%;">
                                <col span="1" style="width: 30%;">
                                <col span="1" style="width: 20%">
                                <col span="1" style="width: 15%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>{$COUPON_CODE}</th>
                                    <th>{$EXPIRY_DATE_TABLE}</th>
                                    <th>{$USES}</th>
                                    <th>{$VIEW}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$COUPON_LIST item=coupon}
                                <tr>
                                    <td>{$coupon.code}</td>
                                    <td>{$coupon.expiry}</td>
                                    <td>{$coupon.limit}</td>
                                    <td>
                                        <a href="{$coupon.link}" class="btn btn-info">{$VIEW}</a>
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