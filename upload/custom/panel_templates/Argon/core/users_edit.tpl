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
                    <h1 class="text-white">{$EDITING_USER}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_USER}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">{$ACTIONS}</button>
                                    <div class="dropdown-menu">
                                        {if isset($DELETE_USER)}<a class="dropdown-item" href="#"
                                            onclick="showDeleteModal()">{$DELETE_USER}</a>{/if}
                                        {if isset($RESEND_ACTIVATION_EMAIL)}<a class="dropdown-item"
                                            href="{$RESEND_ACTIVATION_EMAIL_LINK}">{$RESEND_ACTIVATION_EMAIL}</a>{/if}
                                        {if isset($UPDATE_MINECRAFT_USERNAME)}<a class="dropdown-item"
                                            href="{$UPDATE_MINECRAFT_USERNAME_LINK}">{$UPDATE_MINECRAFT_USERNAME}</a>{/if}
                                        {if isset($UPDATE_UUID)}<a class="dropdown-item"
                                            href="{$UPDATE_UUID_LINK}">{$UPDATE_UUID}</a>{/if}
                                        {if isset($VALIDATE_USER)}<a class="dropdown-item" href="#"
                                            onclick="validateUser()">{$VALIDATE_USER}</a>{/if}
                                    </div>
                                </div>
                                <a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($WARNINGS) && count($WARNINGS)}
                    <div class="alert bg-warning text-white alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h5><i class="icon fas fa-exclamation-triangle"></i> {$WARNINGS_TITLE}</h5>
                        <ul>
                            {foreach from=$WARNINGS item=warning}
                            <li>{$warning}</li>
                            {/foreach}
                        </ul>
                    </div>
                    {/if}

                    <form role="form" action="" method="post">
                        <div class="form-group">
                            <label for="InputMCUsername">{$USERNAME}</label>
                            <input type="text" name="username" class="form-control" id="InputMCUsername"
                                placeholder="{$USERNAME}" value="{$USERNAME_VALUE}">
                        </div>
                        {if $DISPLAYNAMES eq true}
                        <div class="form-group">
                            <label for="InputUsername">{$NICKNAME}</label>
                            <input type="text" name="nickname" class="form-control" id="InputUsername"
                                placeholder="{$NICKNAME}" value="{$NICKNAME_VALUE}">
                        </div>
                        {else}
                        <input type="hidden" name="nickname" value="{$NICKNAME_VALUE}">
                        {/if}
                        <div class="form-group">
                            <label for="InputEmail">{$EMAIL_ADDRESS}</label>
                            <input type="email" name="email" class="form-control" id="InputEmail"
                                placeholder="{$EMAIL_ADDRESS}" value="{$EMAIL_ADDRESS_VALUE}">
                        </div>
                        {if $UUID_LINKING eq true}
                        <div class="form-group">
                            <label for="InputUUID">{$UUID}</label>
                            <input type="text" name="UUID" class="form-control" id="InputUUID" placeholder="{$UUID}"
                                value="{$UUID_VALUE}">
                        </div>
                        {/if}
                        <div class="form-group">
                            <label for="InputTitle">{$USER_TITLE}</label>
                            <input type="text" name="title" class="form-control" id="InputTitle"
                                placeholder="{$USER_TITLE}" value="{$USER_TITLE_VALUE}">
                        </div>
                        {if isset($DISCORD_ID_VALUE)}
                        <div class="form-group">
                            <label for="InputDiscordId">{$DISCORD_ID}</label>
                            <input type="text" class="form-control" id="InputDiscordId" value="{$DISCORD_ID_VALUE}"
                                disabled>
                        </div>
                        {/if}
                        {if $PRIVATE_PROFILE_ENABLED eq true}
                        <div class="form-group">
                            <label for="inputPrivateProfile">{$PRIVATE_PROFILE}</label>
                            <select name="privateProfile" class="form-control" id="inputPrivateProfile">
                                <option value="1" {if $PRIVATE_PROFILE_VALUE eq 1} selected{/if}>{$ENABLED}</option>
                                <option value="0" {if $PRIVATE_PROFILE_VALUE eq 0} selected{/if}>{$DISABLED}</option>
                            </select>
                        </div>
                        {else}
                        <input type="hidden" name="privateProfile" value="0">
                        {/if}
                        <div class="form-group">
                            <label for="inputTemplate">{$ACTIVE_TEMPLATE}</label>
                            <select name="template" class="form-control" id="inputTemplate">
                                {foreach from=$TEMPLATES item=template}
                                <option value="{$template.id}" {if $template.active eq true} selected{/if}>
                                    {$template.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="InputSignature">{$SIGNATURE}</label>
                            <textarea style="width:100%" rows="10" name="signature"
                                id="InputSignature">{$SIGNATURE_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="inputGroups">{$GROUPS}</label>
                        <div class="alert alert-info">
                            <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}</h5>
                            <p>{$GROUPS_INFO}</p>
                        </div>
                            </div>
                            <br />
                            <p><strong>{$MAIN_GROUP_INFO}: </strong>{$MAIN_GROUP->name} {if isset($CANT_EDIT_GROUP)}
                                <i>({$CANT_EDIT_GROUP})</i>
                                {/if}
                            </p>
                            <select class="form-control" name="groups[]" id="inputGroups" multiple>
                                {foreach from=$ALL_GROUPS item=item}
                                <option value="{$item->id}" {if in_array($item->id, $GROUPS_VALUE)}
                                    selected{/if}>{$item->name|escape}</option>
                                {/foreach}
                            </select>
                        </div>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="action" value="update">
                        <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                    </form>

                </div>
            </div>

        {include file='footer.tpl'}
    </div>

    {if isset($DELETE_USER)}
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$CONFIRM_DELETE_USER}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                    <form action="" method="post">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="{$USER_ID}">
                        <input type="submit" class="btn btn-info" value="{$YES}">
                    </form>
                </div>
            </div>
        </div>
    </div>
    {/if}

    {include file='scripts.tpl'}

<script type="text/javascript">
    {if isset($DELETE_USER)}
    function showDeleteModal() {
      $('#deleteModal').modal().show();
    }
    {/if}

    {if isset($VALIDATE_USER)}
    function validateUser() {
      $('#validateUserForm').submit();
    }
    {/if}
</script>

</body>

</html>