{include file='header.tpl'}
<body>
{include file='sidebar.tpl'}

<div class="main-content">
    {include file='navbar.tpl'}

    <!-- Header -->
    <div class="header bg-gradient-info pb-9 pt-5 pt-md-7">
        <div class="container-fluid">
            <div class="header-body">
                <h1 class="text-white">{$VIEWING_USER}</h1>
            </div>
        </div>
    </div>

    <div class="container-fluid mt--8">
        {if isset($NEW_UPDATE)}
        {if $NEW_UPDATE_URGENT eq true}
        <div class="alert alert-danger">
            {else}
            <div class="alert alert-info alert-dismissible" id="updateAlert">
                <button type="button" class="close" id="closeUpdate" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                {/if}
                {$NEW_UPDATE}
                <br/>
                <a href="{$UPDATE_LINK}" class="btn btn-info" style="text-decoration:none">{$UPDATE}</a>
                <hr/>
                {$CURRENT_VERSION}<br/>
                {$NEW_VERSION}
            </div>
            {/if}

            <div class="card">
                <div class="card-body">
                    <a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
                    <hr/>

                    {if isset($SUCCESS)}
                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-check"></i> {$SUCCESS_TITLE}
                            </h5>
                            {$SUCCESS}
                        </div>
                    {/if}

                    {if isset($ERRORS) && count($ERRORS)}
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h5 class="h3 mb-0" style="color: white;"><i
                                        class="icon fas fa-exclamation-triangle"></i> {$ERRORS_TITLE}</h5>
                            <ul>
                                {foreach from=$ERRORS item=error}
                                    <li>{$error}</li>
                                {/foreach}
                            </ul>
                        </div>
                    {/if}

                    <div class="row">
                        {if isset($WARN)}
                            <div class="col-md-4" style="text-align: center">
                                <a href="#" data-toggle="modal" data-target="#warnModal"
                                   class="btn btn-warning">{$WARN}</a>
                            </div>
                        {/if}
                        {if isset($BAN)}
                            <div class="col-md-4" style="text-align: center">
                                <a href="#" data-toggle="modal" data-target="#banModal"
                                   class="btn btn-danger">{$BAN}</a>
                            </div>
                        {/if}
                        {if isset($BAN_IP)}
                            <div class="col-md-4" style="text-align: center">
                                <a href="#" data-toggle="modal" data-target="#banIPModal"
                                   class="btn btn-danger">{$BAN_IP}</a>
                            </div>
                        {/if}
                    </div>

                    <hr/>
                    <h5>{$PREVIOUS_PUNISHMENTS}</h5>
                    {if count($PREVIOUS_PUNISHMENTS_LIST)}
                        {foreach from=$PREVIOUS_PUNISHMENTS_LIST item=punishment name=punishments}
                            <div class="card">
                                <div class="card-header">
                                    {if $punishment.type_numeric == 1}
                                        <span class="badge badge-danger">{$punishment.type}</span>
                                    {elseif $punishment.type_numeric == 2}
                                        <span class="badge badge-warning">{$punishment.type}</span>
                                    {elseif $punishment.type_numeric == 3}
                                        <span class="badge badge-danger">{$punishment.type}</span>
                                    {/if}
                                    {if $punishment.revoked == 1}
                                        <span class="badge badge-info">{$REVOKED}</span>
                                    {/if}
                                    {if $punishment.acknowledged == 1}
                                        <span class="badge badge-success">{$ACKNOWLEDGED}</span>
                                    {/if}
                                    <a href="{$punishment.issued_by_profile}"
                                       style="{$punishment.issued_by_style}">{$punishment.issued_by_nickname}</a>
                                    <span class="pull-right"><span data-toggle="tooltip"
                                                                   data-original-title="{$punishment.date_full}">{$punishment.date_friendly}</span></span>
                                </div>
                                <div class="card-body">
                                    {$punishment.reason}
                                    {if $punishment.revoked == 0 && $punishment.revoke_link != 'none'}
                                        <hr/>
                                        <button class="btn btn-warning"
                                                onclick="showRevokeModal('{$punishment.revoke_link}', '{$punishment.confirm_revoke_punishment}')">{$REVOKE}</button>
                                    {/if}
                                </div>
                            </div>
                        {/foreach}
                    {else}
                        <div class="alert alert-info">
                            {$NO_PREVIOUS_PUNISHMENTS}
                        </div>
                    {/if}

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    {if isset($WARN)}
        <div class="modal fade" id="warnModal" tabindex="-1" role="dialog" aria-labelledby="warnModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="warnModalLabel">{$WARN_USER}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="InputReason">{$REASON}</label>
                                <textarea class="form-control" id="InputReason" name="reason"></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-warning" data-dismiss="modal">{$CANCEL}</button>
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="warn">
                            <input type="submit" class="btn btn-danger" value="{$SUBMIT}">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    {/if}
    {if isset($BAN)}
        <div class="modal fade" id="banModal" tabindex="-1" role="dialog" aria-labelledby="banModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="banModalLabel">{$BAN_USER}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="InputReason">{$REASON}</label>
                                <textarea class="form-control" id="InputReason" name="reason"></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-warning" data-dismiss="modal">{$CANCEL}</button>
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="ban">
                            <input type="submit" class="btn btn-danger" value="{$SUBMIT}">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    {/if}
    {if isset($BAN_IP)}
        <div class="modal fade" id="banIPModal" tabindex="-1" role="dialog" aria-labelledby="banIPModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="banIPModalLabel">{$BAN_IP}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="" method="post">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="InputReason">{$REASON}</label>
                                <textarea class="form-control" id="InputReason" name="reason"></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-warning" data-dismiss="modal">{$CANCEL}</button>
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="ban_ip">
                            <input type="submit" class="btn btn-danger" value="{$SUBMIT}">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    {/if}
    {if isset($REVOKE_PERMISSION)}
        <div class="modal fade" id="revokeModal" tabindex="-1" role="dialog" aria-labelledby="revokeModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="revokeModalLabel">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="revokeModalContents"></div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">{$NO}</button>
                        <a href="" class="btn btn-danger" id="revokeModalLink">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>
    {/if}

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showRevokeModal(link, text) {
            $('#revokeModalContents').html(text);
            $('#revokeModalLink').attr('href', link);
            $('#revokeModal').modal().show();
        }
    </script>

</body>
</html>