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
                    <h1 class="text-white">{$AUTHME}</h1>
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
                    <div class="alert alert-info">
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}
                        </h5>
                        {$AUTHME_INFO}
                    </div>
                    <br />

                    <form id="enableAuthMe" action="" method="post">
                        <label for="inputEnableAuthme">{$ENABLE_AUTHME}</label>
                        <input type="hidden" name="enable_authme" value="0">
                        <input id="inputEnableAuthme" name="enable_authme" type="checkbox"
                            class="js-switch js-check-change" {if $ENABLE_AUTHME_VALUE} checked{/if} value="1" />
                        <input type="hidden" name="token" value="{$TOKEN}">
                    </form>

                    {if isset($AUTHME_DB_DETAILS)}
                    <hr />
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputHashingAlgorithm">{$AUTHME_HASH_ALGORITHM}</label>
                            <select id="inputHashingAlgorithm" class="form-control" name="hashing_algorithm">
                                <option value="bcrypt" {if isset($AUTHME_DB_DETAILS->hash) && $AUTHME_DB_DETAILS->hash
                                    eq 'bcrypt'} selected{/if}>
                                    bcrypt
                                </option>
                                <option value="sha1" {if isset($AUTHME_DB_DETAILS->hash) && $AUTHME_DB_DETAILS->hash eq
                                    'sha1'} selected{/if}>
                                    SHA1
                                </option>
                                <option value="sha256" {if isset($AUTHME_DB_DETAILS->hash) && $AUTHME_DB_DETAILS->hash
                                    eq 'sha256'} selected{/if}>
                                    SHA256
                                </option>
                                <option value="pbkdf2" {if isset($AUTHME_DB_DETAILS->hash) && $AUTHME_DB_DETAILS->hash
                                    eq 'pbkdf2'} selected{/if}>
                                    PBKDF2
                                </option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="inputDBAddress">{$AUTHME_DB_ADDRESS}</label>
                            <input type="text" class="form-control" name="db_address"
                                value="{if isset($AUTHME_DB_DETAILS->address)}{$AUTHME_DB_DETAILS->address|escape}{/if}">
                        </div>
                        <div class="form-group">
                            <label for="inputDBPort">{$AUTHME_DB_PORT}</label>
                            <input type="text" class="form-control" name="db_port"
                                value="{if isset($AUTHME_DB_DETAILS->port)}{$AUTHME_DB_DETAILS->port|escape}{else}3306{/if}">
                        </div>
                        <div class="form-group">
                            <label for="inputDBName">{$AUTHME_DB_NAME}</label>
                            <input type="text" class="form-control" name="db_name"
                                value="{if isset($AUTHME_DB_DETAILS->db)}{$AUTHME_DB_DETAILS->db|escape}{/if}">
                        </div>
                        <div class="form-group">
                            <label for="inputDBUsername">{$AUTHME_DB_USER}</label>
                            <input type="text" class="form-control" name="db_username"
                                value="{if isset($AUTHME_DB_DETAILS->user)}{$AUTHME_DB_DETAILS->user|escape}{/if}">
                        </div>
                        <div class="form-group">
                            <label for="inputDBPassword">{$AUTHME_DB_PASSWORD}</label> <span class="badge badge-info"><i
                                    class="fa fa-question-circle" data-container="body" data-toggle="popover"
                                    data-placement="top" title="{$INFO}"
                                    data-content="{$AUTHME_DB_PASSWORD_HIDDEN}"></i></span>
                            <input type="password" class="form-control" name="db_password">
                        </div>
                        <div class="form-group">
                            <label for="inputDBTable">{$AUTHME_DB_TABLE}</label>
                            <input type="text" class="form-control" name="db_table"
                                value="{if isset($AUTHME_DB_DETAILS->table)}{$AUTHME_DB_DETAILS->table|escape}{else}authme{/if}">
                        </div>
                        <div class="form-group">
                            <label for="inputAuthmeSync">{$AUTHME_PASSWORD_SYNC}</label> <span
                                class="badge badge-info"><i class="fa fa-question-circle" data-container="body"
                                    data-toggle="popover" data-placement="top" title="{$INFO}"
                                    data-content="{$AUTHME_PASSWORD_SYNC_HELP}"></i></span>
                            <input type="hidden" name="authme_sync" value="0">
                            <input id="inputAuthmeSync" name="authme_sync" type="checkbox" class="js-switch" {if
                                isset($AUTHME_DB_DETAILS->sync) && $AUTHME_DB_DETAILS->sync} checked{/if}
                            value="1" />
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info">
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