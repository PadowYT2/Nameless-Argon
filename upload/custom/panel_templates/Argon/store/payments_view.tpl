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
                    <h1 class="text-white">{$PAYMENTS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="row">
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="row" style="margin-bottom: 10px;">
                                <div class="col-md-9">
                                    <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_PAYMENT}</h3>
                                </div>
                                <div class="col-md-3">
                                    <span class="float-md-right">
                                        {if isset($DELETE_PAYMENT)}<a href="#" class="btn btn-danger"
                                            onclick="showDeletePaymentModal()">{$DELETE_PAYMENT}</a>{/if}
                                        <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                                    </span>
                                </div>
                            </div>
                            <hr />

                            <!-- Success and Error Alerts -->
                            {include file='includes/alerts.tpl'}

                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <colgroup>
                                        <col span="1" style="width: 50%">
                                        <col span="1" style="width: 50%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <td><strong>{$IGN}</strong></td>
                                            <td><img src="{$AVATAR}" class="rounded"
                                                    style="max-height:32px;max-width:32px;" alt="{$IGN_VALUE}"> <a
                                                    style="{$STYLE}" href="{$USER_LINK}">{$IGN_VALUE}</a></td>
                                        </tr>
                                        <tr>
                                            <td><strong>{$STATUS}</strong></td>
                                            <td>{$STATUS_VALUE}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>{$TRANSACTION}</strong></td>
                                            <td>{$TRANSACTION_VALUE}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>{$PAYMENT_METHOD}</strong></td>
                                            <td>{$PAYMENT_METHOD_VALUE}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>{$UUID}</strong></td>
                                            <td>{$UUID_VALUE}</td>
                                        </tr>
                                        <tr>
                                            <td><strong>{$PRICE}</strong></td>
                                            <td>{$CURRENCY_SYMBOL}{$PRICE_VALUE} ({$CURRENCY_ISO})</td>
                                        </tr>
                                        <tr>
                                            <td><strong>{$DATE}</strong></td>
                                            <td>{$DATE_VALUE}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            </br>

                            <hr />
                            <div class="row" style="margin-bottom: 10px;">
                                <div class="col-md-9">
                                    <h3 style="margin-top: 10px; margin-bottom: 7px;">{$PENDING_COMMANDS}</h3>
                                </div>
                            </div>
                            {if count($PENDING_COMMANDS_LIST)}
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>{$COMMAND}</th>
                                            <th>{$CONNECTION}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {foreach from=$PENDING_COMMANDS_LIST item=command}
                                        <tr>
                                            <td>{$command.command}</td>
                                            <td>{$command.connection_name}</td>
                                        </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                            </div>
                            {else}
                            <p>{$NO_PENDING_COMMANDS}</p>
                            {/if}

                            </br>

                            <hr />
                            <div class="row" style="margin-bottom: 10px;">
                                <div class="col-md-9">
                                    <h3 style="margin-top: 10px; margin-bottom: 7px;">{$PROCESSED_COMMANDS}</h3>
                                </div>
                            </div>
                            {if count($PROCESSED_COMMANDS_LIST)}
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>{$COMMAND}</th>
                                            <th>{$CONNECTION}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {foreach from=$PROCESSED_COMMANDS_LIST item=command}
                                        <tr>
                                            <td>{$command.command}</td>
                                            <td>{$command.connection_name}</td>
                                        </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                            </div>
                            {else}
                            <p>{$NO_PROCESSED_COMMANDS}</p>
                            {/if}

                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <div class="row" style="margin-bottom: 10px;">
                                <div class="col-md-9">
                                    <h3 style="margin-top: 10px; margin-bottom: 7px;">{$PRODUCTS}</h3>
                                </div>
                            </div>
                            <hr>

                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <tbody>
                                        {foreach from=$PRODUCTS_LIST item=product}
                                        <tr>
                                            <td>{$product.name} <a class="float-right btn btn-info btn-sm" href=""
                                                    data-toggle="modal"
                                                    data-target="#productModal{$product.id}">{$DETAILS}</a></td>
                                        </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {if isset($DELETE_PAYMENT)}
        <div class="modal fade" id="deletePaymentModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_DELETE_PAYMENT}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <form action="" method="post">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="action" value="delete_payment">
                            <input type="submit" class="btn btn-danger" value="{$YES}">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        {/if}

        {foreach from=$PRODUCTS_LIST item=product}
        <div class="modal fade" id="productModal{$product.id}" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$product.name}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                                {if count($product.fields)}
                                <tr>
                                    <td><strong>Fields:</strong>
                                </tr>
                                {foreach from=$product.fields item=field}
                                <tr>
                                    <td>{$field.identifier} <span class="float-right">{$field.value}</span></td>
                                </tr>
                                {/foreach}
                                {else}
                                <tr>
                                    <td>Fields: <span class="float-right">No fields selected for this product.</span>
                                    </td>
                                </tr>
                                {/if}
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        {/foreach}

        {include file='scripts.tpl'}

        <script type="text/javascript">
            {if isset($DELETE_PAYMENT)}
            function showDeletePaymentModal() {
                $('#deletePaymentModal').modal().show();
            }
            {/if}
        </script>

</body>

</html>