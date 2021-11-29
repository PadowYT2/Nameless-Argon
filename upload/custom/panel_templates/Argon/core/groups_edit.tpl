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
                    <h1 class="text-white">{$GROUP_NAME}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$GROUP_NAME}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">{if isset($PERMISSIONS)}

                                <a href="{$PERMISSIONS_LINK}" class="btn btn-info">{$PERMISSIONS}</a>
                                {/if}
                                <button role="button" class="btn btn-warning"
                                    onclick="showCancelModal()">{$CANCEL}</button>
                                {if isset($DELETE_GROUP)}
                                <button role="button" class="btn btn-danger"
                                    onclick="showDeleteModal()">{$DELETE}</button>
                                {/if}
                            </span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($OWN_GROUP)}
                    <div class="card shadow border-left-info">
                        <div class="card-body">
                            <h5><i class="icon fa fa-info-circle"></i> {$INFO}</h5>
                            {$OWN_GROUP}
                        </div>
                    </div>
                    <br />
                    {/if}

                    <form role="form" action="" method="post">
                        <div class="form-group">
                            <label for="InputGroupname">{$NAME}</label>
                            <input type="text" name="groupname" class="form-control" id="InputGroupname"
                                placeholder="{$NAME}" value="{$GROUP_NAME}">
                        </div>
                        <div class="form-group">
                            <label for="InputHTML">{$GROUP_HTML}</label>
                            <input type="text" name="html" class="form-control" id="InputHTML"
                                placeholder="{$GROUP_HTML}" value="{$GROUP_HTML_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputColour">{$GROUP_USERNAME_COLOUR}</label>
                            <div class="input-group">
                                <input type="text" name="username_style" class="form-control" id="InputColour"
                                    value="{$GROUP_USERNAME_COLOUR_VALUE}">
                                <span class="input-group-append groupColour">
                                    <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputCss">{$GROUP_USERNAME_CSS}</label>
                            <input type="text" name="username_css" class="form-control" id="InputCss"
                                placeholder="{$GROUP_USERNAME_CSS}" value="{$GROUP_USERNAME_CSS_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="InputOrder">{$GROUP_ORDER}</label>
                            <input type="number" min="1" class="form-control" id="InputOrder" name="order"
                                value="{$GROUP_ORDER_VALUE}">
                        </div>
                        {if $DISCORD_INTEGRATION}
                        <div class="form-group">
                            <label for="InputDiscordRoleID">{$DISCORD_ROLE_ID} <span class="badge badge-info"
                                    data-toggle="popover" data-title="{$INFO}" data-content="{$ID_INFO|escape}"><i
                                        class="fa fa-question"></i></label>
                            <input type="number" min="1" class="form-control" id="InputDiscordRoleID"
                                name="discord_role_id" value="{$DISCORD_ROLE_ID_VALUE}">
                        </div>
                        {/if}
                        <div class="form-group">
                            <label for="InputTfa">{$FORCE_TFA} <span class="badge badge-warning" data-toggle="popover"
                                    data-title="{$WARNING}" data-content="{$FORCE_TFA_WARNING|escape}"><i
                                        class="fa fa-exclamation-triangle"></i></label>
                            <input type="hidden" name="tfa" value="0">
                            <input type="checkbox" name="tfa" class="js-switch" id="InputTfa" value="1" {if
                                $FORCE_TFA_VALUE eq 1} checked{/if}>
                        </div>
                        <div class="form-group">
                            <label for="InputStaff">{$STAFF_GROUP}</label>
                            <input type="hidden" name="staff" value="0">
                            <input type="checkbox" name="staff" class="js-switch" id="InputStaff" value="1" {if
                                $STAFF_GROUP_VALUE eq 1} checked{/if}>
                        </div>
                        {if !isset($OWN_GROUP)}
                        <div class="form-group">
                            <label for="InputStaffCP">{$STAFF_CP}</label>
                            <input type="hidden" name="staffcp" value="0">
                            <input type="checkbox" name="staffcp" class="js-switch" id="InputStaffCP" value="1" {if
                                $STAFF_CP_VALUE eq 1} checked{/if}>
                        </div>
                        {/if}
                        <div class="form-group">
                            <label for="InputDefault">{$DEFAULT_GROUP}</label>
                            <input type="hidden" name="default" value="0">
                            <input type="checkbox" name="default" class="js-switch" id="InputDefault" value="1" {if
                                $DEFAULT_GROUP_VALUE eq 1} checked{/if}>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="action" value="update">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                        </div>
                    </form>

                </div>
            </div>


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

    {if isset($DELETE_GROUP)}
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{$ARE_YOU_SURE}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$CONFIRM_DELETE}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                    <form action="" method="post">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="{$GROUP_ID}">
                        <input type="submit" class="btn btn-info" value="{$YES}">
                    </form>
                </div>
            </div>
        </div>
    </div>
    {/if}

    {include file='scripts.tpl'}

<script type="text/javascript">
  function showCancelModal() {
    $('#cancelModal').modal().show();
  }
  {if isset($DELETE_GROUP)}
  function showDeleteModal() {
    $('#deleteModal').modal().show();
  }
  {/if}
  $(function () {
    $('.groupColour').colorpicker({
      format: 'hex',
      'color': {if $GROUP_USERNAME_COLOUR_VALUE} '{$GROUP_USERNAME_COLOUR_VALUE}' {else} '#000000' {/if}
    });

    $('.groupColour').on('colorpickerChange', function (event) {
      $('#InputColour').val(event.color.toString());
    });

    $('#InputColour').change(function () {
      $('.groupColour').colorpicker('setValue', $(this).val());
    });
  });
</script>

</body>

</html>