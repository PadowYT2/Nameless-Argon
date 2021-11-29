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
                    <h1 class="text-white">{$PERMISSIONS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 20px;">{$PERMISSIONS}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        {foreach from=$ALL_PERMISSIONS key=key item=item}
                        <div class="table-responsive">
                            <table id="{$key|escape}" class="table table-striped">
                                <colgroup>
                                    <col span="1" style="width:70%">
                                    <col span="1" style="width:30%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>{$key|escape}</th>
                                        <th><a href="#"
                                                onclick="selectAllPerms('{$key|escape}'); return false;">{$SELECT_ALL}</a>
                                            | <a href="#"
                                                onclick="deselectAllPerms('{$key|escape}'); return false;">{$DESELECT_ALL}</a>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$item key=permission item=title}
                                    <tr>
                                        <td>{$title}</td>
                                        <td><input type="checkbox" name="permissions[{$permission|escape}]"
                                                class="js-switch" value="1" {if is_array($PERMISSIONS_VALUES) &&
                                                array_key_exists($permission|escape, $PERMISSIONS_VALUES)} checked{/if}>
                                        </td>
                                    </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        </div>
                        {/foreach}

                        <br />

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
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
        function selectAllPerms(section) {
            var table = $('table#' + section);
            table.find('tbody tr td .js-switch').each(function () {
                $(this).prop('checked', true);
                onChange(this);
            });
            return false;
        }

        function deselectAllPerms(section) {
            var table = $('table#' + section);
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