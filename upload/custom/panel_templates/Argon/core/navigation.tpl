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
                    <h1 class="text-white">{$NAVIGATION}</h1>
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
                        <div class="alert alert-info">
                            <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}
                            </h5>
                            <p>{$NAVBAR_ORDER_INSTRUCTIONS}</p>
                            <p>{$NAVBAR_ICON_INSTRUCTIONS}</p>
                        </div>
                        <br />
                        {foreach from=$NAV_ITEMS key=key item=item}
                        <strong>{$item.title|escape}</strong>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="input{$item.title|escape}">{$NAVBAR_ORDER}</label>
                                    <input type="number" min="1" class="form-control" id="input{$item.title|escape}"
                                        name="inputOrder[{if isset($item.custom) && is_numeric($item.custom)}{$item.custom}{else}{$key}{/if}]"
                                        value="{$item.order|escape}">
                                </div>
                                <div class="col-md-6">
                                    <label for="input{$item.title|escape}Icon">{$NAVBAR_ICON}</label>
                                    <input type="text" class="form-control" id="input{$item.title|escape}Icon"
                                        name="inputIcon[{if isset($item.custom) && is_numeric($item.custom)}{$item.custom}{else}{$key}{/if}]"
                                        value="{$item.icon|escape}">
                                </div>
                            </div>
                        </div>
                        {if isset($item.items) && count($item.items)}
                        <br>
                        <strong>{$item.title|escape} &raquo; {$DROPDOWN_ITEMS}</strong>
                        <br />
                        {foreach from=$item.items key=dropdown_key item=dropdown_item}
                        <strong>{$dropdown_item.title|escape}</strong>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="input{$dropdown_item.title|escape}">{$NAVBAR_ORDER}</label>
                                    <input type="number" min="1" class="form-control"
                                        id="input{$dropdown_item.title|escape}"
                                        name="inputOrder[{if isset($dropdown_item.custom) && is_numeric($dropdown_item.custom)}{$dropdown_item.custom}{else}{$dropdown_key}{/if}]"
                                        value="{$dropdown_item.order|escape}">
                                </div>
                                <div class="col-md-6">
                                    <label for="input{$dropdown_item.title|escape}Icon">{$NAVBAR_ICON}</label>
                                    <input type="text" class="form-control" id="input{$dropdown_item.title|escape}Icon"
                                        name="inputIcon[{if isset($dropdown_item.custom) && is_numeric($dropdown_item.custom)}{$dropdown_item.custom}{else}{$dropdown_key}{/if}]"
                                        value="{$dropdown_item.icon|escape}">
                                </div>
                            </div>
                        </div>
                        {/foreach}
                        {/if}

                        {/foreach}
                        <hr>
                        <div class="form-group">
                            <label for="dropdown_name">{$DROPDOWN_NAME}</label>
                            <input type="text" class="form-control" id="dropdown_name" name="dropdown_name"
                                value="{$DROPDOWN_NAME_VALUE}">
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
    </div>
    </div>

    {include file='scripts.tpl'}

</body>

</html>