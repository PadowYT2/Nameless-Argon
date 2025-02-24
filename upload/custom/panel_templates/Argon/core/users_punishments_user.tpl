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
                    <h1 class="text-white">{$PUNISHMENTS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <!-- Success and Error Alerts -->
            {include file='includes/alerts.tpl'}

            <div class="card shadow mb-4">
                <div class="card-body">

                    <div class="row">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_USER}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />

                    {if isset($RESET_AVATAR)}
                    <button data-toggle="modal" data-target="#resetAvatarModal" class="btn btn-warning" {if ($HAS_AVATAR
                        !=true)} disabled {/if}>{$RESET_AVATAR}</button>
                    {/if}
                    {if isset($WARN)}
                    <a href="#" data-toggle="modal" data-target="#warnModal" class="btn btn-warning">{$WARN}</a>
                    {/if}
                    {if isset($BAN)}
                    <a href="#" data-toggle="modal" data-target="#banModal" class="btn btn-danger">{$BAN}</a>
                    {/if}
                    {if isset($BAN_IP)}
                    <a href="#" data-toggle="modal" data-target="#banIPModal" class="btn btn-danger">{$BAN_IP}</a>
                    {/if}

                </div>
            </div>

            <div class="card shadow mb-4">
                <div class="card-body">

                    <h3 style="margin-top: 10px; margin-bottom: 7px;">{$PREVIOUS_PUNISHMENTS}</h3>
                    <hr />
                    {if count($PREVIOUS_PUNISHMENTS_LIST)}
                    {foreach from=$PREVIOUS_PUNISHMENTS_LIST item=punishment name=punishments}
                    <div class="card shadow">
                        <div class="card-header">
                            {if $punishment.type_numeric == 1}
                            <span class="badge badge-danger">{$punishment.type}</span>
                            {elseif $punishment.type_numeric == 2 || $punishment.type_numeric == 4}
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
                            <hr />
                            <button class="btn btn-warning"
                                onclick="showRevokeModal('{$punishment.revoke_link}', '{$punishment.confirm_revoke_punishment|replace:"'":"\'"}')">{$REVOKE}</button>
                            {/if}
                        </div>
                    </div>
                    <br />
                    {/foreach}
                    {else}
                    <div class="alert bg-info text-white">
                        {$NO_PREVIOUS_PUNISHMENTS}
                    </div>
                    {/if}

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    {if isset($RESET_AVATAR)}
    <div class="modal fade" id="resetAvatarModal" tabindex="-1" role="dialog" aria-labelledby="resetAvatarModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="warnModalLabel">{$RESET_AVATAR}</h4>
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
                        <input type="hidden" name="type" value="reset_avatar">
                        <input type="submit" class="btn btn-danger" value="{$SUBMIT}">
                    </div>
                </form>
            </div>
        </div>
    </div>
    {/if}
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
                    <form action="" method="post" id="revokeForm">
                        <input type="hidden" name="token" value="{$TOKEN}" />
                        <button type="button" class="btn btn-warning" data-dismiss="modal">{$NO}</button>
                        <input type="submit" class="btn btn-danger" value="{$YES}" />
                    </form>
                </div>
            </div>
        </div>
    </div>
    {/if}

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showRevokeModal(link, text) {
            $('#revokeModalContents').html(text);
            $('#revokeForm').attr('action', link);
            $('#revokeModal').modal().show();
        }
    </script>

</body>

</html>