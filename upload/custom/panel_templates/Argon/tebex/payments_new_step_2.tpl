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

            <div class="card">
                <div class="card-body">
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$NEW_PAYMENT}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <button type="button" onclick="showCancelModal()"
                                    class="btn btn-warning">{$CANCEL}</button>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputPrice">{$PRICE}</label>
                            <input id="inputPrice" name="bc_payment_price" class="form-control" type="number"
                                step="0.01" min="0.01" value="{$PRICE}">
                        </div>
                        {if count($PACKAGE_FIELDS)}
                        {foreach from=$PACKAGE_FIELDS item=field}
                        <div class="form-group">
                            <label for="input{$field.id}">{$field.name_title}</label><br />
                            {if $field.description}{$field.description}{/if}
                            {if $field.type == 'numeric'}
                            <input {if $field.id=='price' }disabled {/if}id="input{$field.id}" name="{$field.name}"
                                class="form-control" type="number" min="0" step="1">
                            {elseif $field.type == 'text'}
                            <textarea id="input{$field.id}" name="{$field.name}" class="form-control"></textarea>
                            {elseif $field.type == 'alpha'}
                            <input id="input{$field.id}" name="{$field.name}" class="form-control" type="text"
                                pattern="([A-zÀ-ž\s]){literal}{{/literal}{$field.min_length},{literal}}{/literal}">
                            {elseif $field.type == 'username'}
                            <input id="input{$field.id}" name="{$field.name}" class="form-control" type="text">
                            {elseif $field.type == 'email'}
                            <input id="input{$field.id}" name="{$field.name}" class="form-control" type="email">
                            {elseif $field.type == 'dropdown'}
                            <select class="form-control" id="input{$field.id}" name="{$field.name}">
                                {foreach from=$field.options item=option}
                                <option value="{$option.value}">{$option.label}</option>
                                {/foreach}
                            </select>
                            {/if}
                        </div>
                        {/foreach}
                        {/if}

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_CANCEL}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="{$CANCEL_LINK}" class="btn btn-info">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showCancelModal() {
                $('#cancelModal').modal().show();
            }
        </script>

</body>

</html>