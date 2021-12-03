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
                    <h1 class="text-white">{$LABELS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_LABEL}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><button class="btn btn-warning" onclick="showCancelModal()"
                                    type="button">{$CANCEL}</button></span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="label_name">{$LABEL_NAME}</label>
                            <input type="text" name="label_name" placeholder="{$LABEL_NAME}" value="{$LABEL_NAME_VALUE}"
                                id="label_name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="label_id">{$LABEL_TYPE}</label><br />
                            <div class="row">
                                {if count($LABEL_TYPES)}
                                {assign var=i value=0}
                                {foreach from=$LABEL_TYPES item=label_type}
                                {if $i != 0 && ($i % 6) == 0}
                            </div>
                            <div class="row">
                                {/if}
                                <div class="col-md-2">
                                    <input type="radio" name="label_id" id="label_id" value="{$label_type.id}" {if
                                        $label_type.selected} checked{/if} /> {$label_type.name}
                                </div>
                                {assign var=i value=$i+1}
                                {/foreach}
                                {/if}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="label_forums">{$LABEL_FORUMS}</label>
                            <select name="label_forums[]" id="label_forums" size="5" class="form-control" multiple
                                style="overflow:auto;">
                                {if count($ALL_FORUMS)}
                                {foreach from=$ALL_FORUMS item=item}
                                <option value="{$item.id}" {if $item.selected} selected{/if}>{$item.name}</option>
                                {/foreach}
                                {/if}
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="label_groups">{$LABEL_GROUPS}</label>
                            <select name="label_groups[]" id="label_groups" size="5" class="form-control" multiple
                                style="overflow:auto;">
                                {if count($ALL_GROUPS)}
                                {foreach from=$ALL_GROUPS item=item}
                                <option value="{$item.id}" {if $item.selected} selected{/if}>{$item.name}</option>
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
        </div>

        {include file='footer.tpl'}

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
            function showCancelModal() {
                $('#cancelModal').modal().show();
            }
        </script>

</body>

</html>