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
                    <h1 class="text-white">{$EDITING_TEMPLATE}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <div class="row" style="margin-bottom: 15px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_TEMPLATE}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form role="form" action="" method="post">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <colgroup>
                                    <col span="1" style="width:70%">
                                    <col span="1" style="width:30%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>{$GROUP}</th>
                                        <th><a href="#" onclick="selectAllPerms(); return false;">{$SELECT_ALL}</a> | <a
                                                href="#" onclick="deselectAllPerms(); return false;">{$DESELECT_ALL}</a>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{$GUEST}</td>
                                        <td><input type="hidden" name="perm-use-0" value="0" /><input
                                                onclick="colourUpdate(this);" class="js-switch" name="perm-use-0"
                                                id="Input-use-0" value="1" type="checkbox" {if
                                                isset($GUEST_PERMISSIONS->can_use_template) &&
                                            $GUEST_PERMISSIONS->can_use_template eq 1} checked{/if} />
                                        </td>
                                    </tr>
                                    {foreach from=$GROUP_PERMISSIONS item=group}
                                    <tr>
                                        <td>{$group->name|escape}</td>
                                        <td><input type="hidden" name="perm-use-{$group->id|escape}" value="0" />
                                            <input onclick="colourUpdate(this);" class="js-switch"
                                                name="perm-use-{$group->id|escape}" id="Input-use-{$group->id|escape}"
                                                value="1" type="checkbox" {if isset($group->can_use_template) &&
                                            $group->can_use_template eq 1} checked{/if} />
                                        </td>
                                    </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            </br>
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                </div>
            </div>

        </div>

        {include file='footer.tpl'}

    </div>

    {include file='scripts.tpl'}


    <script type="text/javascript">
        function selectAllPerms() {
            var table = $('table');
            table.find('tbody tr td .js-switch').each(function () {
                $(this).prop('checked', true);
                onChange(this);
            });
            return false;
        }

        function deselectAllPerms() {
            var table = $('table');
            table.find('tbody tr td .js-switch').each(function () {
                $(this).prop('checked', false);
                onChange(this);
            });
            return false;
        }

        function onChange(el) {
            if (typeof Event === 'function' || !document.fireEvent) {
                var event = document.createEvent('HTMLEvents');
                event.initEvent('change', true, true);
                el.dispatchEvent(event);
            } else {
                el.fireEvent('onchange');
            }
        }
    </script>

</body>

</html>