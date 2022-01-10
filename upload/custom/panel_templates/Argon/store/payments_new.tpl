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

            <div class="card">
                <div class="card-body">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CREATE_PAYMENT}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($NO_PRODUCTS)}
                    <p>{$NO_PRODUCTS}</p>
                    {else}
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputUsername">{$USERNAME}</label>
                            <input type="text" class="form-control" id="inputUsername" name="username"
                                placeholder="{$USERNAME}" required>
                        </div>
                        <div class="form-group">
                            <label for="inputProduct">{$PRODUCTS}</label>
                            <select class="form-control" name="products[]" id="inputProducts" multiple required>
                                {foreach from=$PRODUCTS_LIST item=item}
                                <option value="{$item.id}">{$item.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>