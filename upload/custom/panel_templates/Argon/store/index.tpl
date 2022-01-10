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
                    <h1 class="text-white">{$STORE}</h1>
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
                            <label for="inputAllowGuests">{$ALLOW_GUESTS}</label>
                            <input type="checkbox" name="allow_guests" id="inputAllowGuests" class="js-switch" {if
                                $ALLOW_GUESTS_VALUE} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="inputPlayerLogin">{$PLAYER_LOGIN}</label>
                            <input type="checkbox" name="player_login" id="inputPlayerLogin" class="js-switch" {if
                                $PLAYER_LOGIN_VALUE} checked{/if} />
                        </div>

                        <div class="form-group">
                            <label for="inputStorePath">{$STORE_PATH}</label>
                            <input type="text" class="form-control" id="inputStorePath" name="store_path"
                                placeholder="{$STORE_PATH}" value="{$STORE_PATH_VALUE}">
                        </div>

                        <div class="form-group">
                            <label for="link_location">{$CURRENCY}</label>
                            <select class="form-control" id="currency" name="currency">
                                {foreach from=$CURRENCY_LIST item=currency}
                                <option value="{$currency}" {if $CURRENCY_VALUE eq {$currency}} selected{/if}>
                                    {$currency}</option>
                                {/foreach}
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="inputCurrencySymbol">{$CURRENCY_SYMBOL}</label>
                            <input type="text" class="form-control" id="inputCurrencySymbol" name="currency_symbol"
                                placeholder="$" value="{$CURRENCY_SYMBOL_VALUE}">
                        </div>

                        <div class="form-group">
                            <label for="link_location">{$LINK_LOCATION}</label>
                            <select class="form-control" id="link_location" name="link_location">
                                <option value="1" {if $LINK_LOCATION_VALUE eq 1} selected{/if}>{$LINK_NAVBAR}</option>
                                <option value="2" {if $LINK_LOCATION_VALUE eq 2} selected{/if}>{$LINK_MORE}</option>
                                <option value="3" {if $LINK_LOCATION_VALUE eq 3} selected{/if}>{$LINK_FOOTER}</option>
                                <option value="4" {if $LINK_LOCATION_VALUE eq 4} selected{/if}>{$LINK_NONE}</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="inputStoreContent">{$STORE_INDEX_CONTENT}</label>
                            <textarea id="inputStoreContent"
                                name="store_content">{$STORE_INDEX_CONTENT_VALUE}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="inputCheckoutCompleteContent">{$CHECKOUT_COMPLETE_CONTENT}</label>
                            <textarea id="inputCheckoutCompleteContent"
                                name="checkout_complete_content">{$CHECKOUT_COMPLETE_CONTENT_VALUE}</textarea>
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                        </div>
                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>