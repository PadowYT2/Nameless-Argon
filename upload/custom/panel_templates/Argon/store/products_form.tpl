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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$PRODUCT_TITLE}</h3>
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

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputName">{$PRODUCT_NAME}</label>
                            <input type="text" name="name" class="form-control" id="InputName"
                                value="{$PRODUCT_NAME_VALUE}" placeholder="{$PRODUCT_NAME}" required>
                        </div>
                        <div class="form-group">
                            <strong><label for="inputDescription">{$PRODUCT_DESCRIPTION}</label></strong>
                            <textarea id="inputDescription" name="description">{$PRODUCT_DESCRIPTION_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="inputPrice">{$PRICE}</label>
                                    <div class="input-group">
                                        <input type="number" name="price" class="form-control" id="inputPrice"
                                            step="0.01" min="0.00" value="{$PRODUCT_PRICE_VALUE}" placeholder="{$PRICE}"
                                            required>
                                        <div class="input-group-append">
                                            <span class="input-group-text">{$CURRENCY}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label for="inputCategory">{$CATEGORY}</label>
                                    <select name="category" class="form-control" id="inputCategory" required>
                                        {foreach from=$CATEGORY_LIST item=category}
                                        <option value="{$category.id}" {if $PRODUCT_CATEGORY_VALUE=={$category.id}}
                                            selected{/if}>{$category.name}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="inputConnections">{$CONNECTIONS}</label>
                                    <select name="connections[]" id="label_connections" size="3" class="form-control"
                                        multiple style="overflow:auto;">
                                        {foreach from=$CONNECTIONS_LIST item=connection}
                                        <option value="{$connection.id}" {if $connection.selected} selected{/if}>
                                            {$connection.name}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label for="inputFields">{$FIELDS}</label>
                                    <select name="fields[]" id="label_fields" size="3" class="form-control" multiple
                                        style="overflow:auto;">
                                        {foreach from=$FIELDS_LIST item=field}
                                        <option value="{$field.id}" {if $field.selected} selected{/if}>
                                            {$field.identifier}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputHidden">{$HIDE_PRODUCT}</label>
                            <input id="inputHidden" name="hidden" type="checkbox" class="js-switch" {if
                                $HIDE_PRODUCT_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="inputDisabled">{$DISABLE_PRODUCT}</label>
                            <input id="inputDisabled" name="disabled" type="checkbox" class="js-switch" {if
                                $DISABLE_PRODUCT_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                    </br>

                    {if isset($ACTIONS)}
                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$ACTIONS}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-info" href="{$NEW_ACTION_LINK}">{$NEW_ACTION}</a>
                            </span>
                        </div>
                    </div>

                    {if count($ACTION_LIST)}
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Trigger On</th>
                                    <th>Require the player to be online</th>
                                    <th>Command (Without /)</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody id="sortable">
                                {foreach from=$ACTION_LIST item=action}
                                <tr data-id="{$command.id}">
                                    <td>{$action.type}</td>
                                    <td>{$action.requirePlayer}</td>
                                    <td>{$action.command}</td>
                                    <td>
                                        <div class="float-md-right">
                                            <a class="btn btn-warning btn-sm" href="{$action.edit_link}"><i
                                                    class="fas fa-edit fa-fw"></i></a>
                                            <a class="btn btn-danger btn-sm" href="{$action.delete_link}"><i
                                                    class="fas fa-trash fa-fw"></i></a>
                                        </div>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    <hr>
                    There are no actions yet.
                    </br></br>
                    {/if}
                    {/if}

                    <!--<form action="" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <strong>{$PRODUCT_IMAGE}</strong><br />
                                    {if $PRODUCT_IMAGE_VALUE}
                                        <img src="{$PRODUCT_IMAGE_VALUE}" alt="{$PRODUCT_NAME}" style="max-height:200px;max-width:200px;"><br />
                                    {/if}
                                    <strong>{$UPLOAD_NEW_IMAGE}</strong><br />
                                    <label class="btn btn-secondary">
                                        {$BROWSE} <input type="file" name="store_image" hidden/>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                    <input type="hidden" name="type" value="image">
                                    <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                                </div>
                            </form>-->

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>