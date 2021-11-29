{include file='header.tpl'}

<body>
    {include file='sidebar.tpl'}

    <div class="main-content">
        {include file='navbar.tpl'}

        <!-- Header -->
        <div class="header bg-gradient-info pb-9 pt-5 pt-md-7">
            <div class="container-fluid">
                <div class="header-body">
                    <h1 class="text-white">{$API}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="alert alert-info">
                        <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-info-circle"></i> {$INFO}</h5>
                        {$GROUP_SYNC_INFO}
                    </div>

                    {if count($GROUP_SYNC_VALUES)}
                    <h5>{$EXISTING_RULES}</h5>
                    <form action="" method="post">
                        {foreach from=$GROUP_SYNC_VALUES item=group_sync}
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="inputIngame">{$INGAME_GROUP_NAME}</label>
                                    {if count($INGAME_GROUPS)}
                                    <select name="ingame_group[{$group_sync.id}]" class="form-control" id="inputIngame">
                                        <option value="0" {if {$group_sync.ingame}==NULL} selected{/if}>{$NONE}
                                            ({$DISABLED})</option>
                                        {foreach from=$INGAME_GROUPS item=group}
                                        <option value="{$group}" {if {$group_sync.ingame} eq $group} selected{/if}>
                                            {$group}</option>
                                        {/foreach}
                                    </select>
                                    {else}
                                    <p class="text-muted" style="padding-top: 5px">{$GROUP_SYNC_PLUGIN_NOT_SET_UP}</p>
                                    <input name="ingame_group[{$group_sync.id}]" type="hidden" id="inputIngame"
                                        value="{$group_sync.ingame}">
                                    {/if}
                                </div>
                                <div class="col-md-4">
                                    <label for="inputDiscord">{$DISCORD_ROLE_ID}</label>
                                    {if count($DISCORD_GROUPS)}
                                    <select name="discord_role[{$group_sync.id}]" class="form-control"
                                        id="inputDiscord">
                                        <option value="0" {if {$group_sync.discord}==NULL} selected{/if}>{$NONE}
                                            ({$DISABLED})</option>
                                        {foreach from=$DISCORD_GROUPS item=group}
                                        <option value="{$group.id}" {if {$group_sync.discord} eq $group.id}
                                            selected{/if}>{$group.name}
                                            ({$group.id})
                                        </option>
                                        {/foreach}
                                    </select>
                                    {else}
                                    <p class="text-muted" style="padding-top: 5px">{$DISCORD_INTEGRATION_NOT_SETUP}</p>
                                    <input name="discord_role[{$group_sync.id}]" type="hidden" id="inputDiscord"
                                        value="0">
                                    {/if}
                                </div>
                                <div class="col-md-3">
                                    <label for="inputWebsite">{$WEBSITE_GROUP}</label>
                                    <select name="website_group[{$group_sync.id}]" class="form-control"
                                        id="inputWebsite">
                                        {foreach from=$GROUPS item=group}
                                        <option value="{$group.id}" {if $group_sync.website eq $group.id} selected{/if}>
                                            {$group.name}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="col-md-1">
                                    <div style="height:32px"></div>
                                    <button type="button" onclick="deleteGroupSync('{$group_sync.id}')"
                                        class="btn btn-danger">{$DELETE}</button>
                                </div>
                            </div>
                        </div>
                        {/foreach}
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="action" value="update">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>
                    <hr />
                    {/if}

                    <h5>{$NEW_RULE}</h5>
                    <form action="" method="post">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="inputIngame">{$INGAME_GROUP_NAME}</label>
                                    {if count($INGAME_GROUPS)}
                                    <select name="ingame_rank_name" class="form-control" id="inputIngame">
                                        <option value="0">{$NONE} ({$DISABLED})</option>
                                        {foreach from=$INGAME_GROUPS item=group}
                                        <option value="{$group}">{$group}</option>
                                        {/foreach}
                                    </select>
                                    {else}
                                    <p class="text-muted" style="padding-top: 5px">{$GROUP_SYNC_PLUGIN_NOT_SET_UP}</p>
                                    <input name="ingame_rank_name" type="hidden" id="inputIngame">
                                    {/if}
                                </div>
                                <div class="col-md-4">
                                    <label for="inputDiscord">{$DISCORD_ROLE_ID}</label>
                                    {if count($DISCORD_GROUPS)}
                                    <select name="discord_role_id" class="form-control" id="inputDiscord">
                                        <option value="0">{$NONE} ({$DISABLED})</option>
                                        {foreach from=$DISCORD_GROUPS item=group}
                                        <option value="{$group.id}">{$group.name} ({$group.id})</option>
                                        {/foreach}
                                    </select>
                                    {else}
                                    <p class="text-muted" style="padding-top: 5px">{$DISCORD_INTEGRATION_NOT_SETUP}</p>
                                    <input class="form-control" name="discord_role_id" type="hidden" id="inputDiscord"
                                        value="0">
                                    {/if}
                                </div>
                                <div class="col-md-4">
                                    <label for="inputWebsite">{$WEBSITE_GROUP}</label>
                                    <select name="website_group" class="form-control" id="inputWebsite">
                                        {foreach from=$GROUPS item=group}
                                        <option value="{$group.id}">{$group.name}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="action" value="create">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>