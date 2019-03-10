{include file='header.tpl'}
<body>
    {include file='sidebar.tpl'}

    <div class="main-content">
        {include file='navbar.tpl'}

        <!-- Header -->
        <div class="header bg-gradient-primary pb-9 pt-5 pt-md-7">
            <div class="container-fluid">
                <div class="header-body">
                    <h1 class="text-white">{$CREATING_LABEL}</h1>
                </div>
            </div>
        </div>

            <div class="container-fluid mt--8">
                {if isset($NEW_UPDATE)}
                {if $NEW_UPDATE_URGENT eq true}
                <div class="alert alert-danger">
                {else}
                <div class="alert alert-primary alert-dismissible" id="updateAlert">
                    <button type="button" class="close" id="closeUpdate" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    {/if}
                    {$NEW_UPDATE}
                    <br />
                    <a href="{$UPDATE_LINK}" class="btn btn-primary" style="text-decoration:none">{$UPDATE}</a>
                    <hr />
                    {$CURRENT_VERSION}<br />
                    {$NEW_VERSION}
                </div>
                {/if}

                <div class="card">
                    <div class="card-body">
                        <button class="btn btn-warning" onclick="showCancelModal()" type="button">{$CANCEL}</button>
                        <hr />

                        {if isset($SUCCESS)}
                            <div class="alert alert-success alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-check"></i> {$SUCCESS_TITLE}</h5>
                                {$SUCCESS}
                            </div>
                        {/if}

                        {if isset($ERRORS) && count($ERRORS)}
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h5 class="h3 mb-0" style="color: white;"><i class="icon fas fa-exclamation-triangle"></i> {$ERRORS_TITLE}</h5>
                                <ul>
                                    {foreach from=$ERRORS item=error}
                                        <li>{$error}</li>
                                    {/foreach}
                                </ul>
                            </div>
                        {/if}

                        <form action="" method="post">
                            <div class="form-group">
                                <label for="label_name">{$LABEL_NAME}</label>
                                <input type="text" name="label_name" placeholder="{$LABEL_NAME}" value="{$LABEL_NAME_VALUE}" id="label_name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="label_id">{$LABEL_TYPE}</label><br />
                                <div class="row">
                                    {if count($LABEL_TYPES)}
                                    {assign var=i value=0}
                                    {foreach from=$LABEL_TYPES item=label_type}
                                    {if $i != 0 && ($i % 6) == 0}
                                </div><div class="row">
                                    {/if}
                                    <div class="col-md-2">
                                        <input type="radio" name="label_id" id="label_id" value="{$label_type.id}"> {$label_type.name}
                                    </div>
                                    {assign var=i value=$i+1}
                                    {/foreach}
                                    {/if}
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="label_forums">{$LABEL_FORUMS}</label>
                                <select name="label_forums[]" id="label_forums" size="5" class="form-control" multiple style="overflow:auto;">
                                    {if count($ALL_FORUMS)}
                                        {foreach from=$ALL_FORUMS item=item}
                                            <option value="{$item.id}">{$item.name}</option>
                                        {/foreach}
                                    {/if}
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="label_groups">{$LABEL_GROUPS}</label>
                                <select name="label_groups[]" id="label_groups" size="5" class="form-control" multiple style="overflow:auto;">
                                    {if count($ALL_GROUPS)}
                                        {foreach from=$ALL_GROUPS item=item}
                                            <option value="{$item.id}">{$item.name}</option>
                                        {/foreach}
                                    {/if}
                                </select>
                            </div>
                            <div class="forum-group">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                            </div>
                        </form>

                    </div>
                </div>

                <!-- Spacing -->
                <div style="height:1rem;"></div>

            </div>
        {include file='footer.tpl'}
    </div>

    <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{$ARE_YOU_SURE}</h5>
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

{include file='scripts.tpl'}
<script type="text/javascript">
    function showCancelModal(){
        $('#cancelModal').modal().show();
    }
</script>

</body>
</html>