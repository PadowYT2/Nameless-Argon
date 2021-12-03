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

            <div class="card">
                <div class="card-body">
                                        <button onclick="showSearchModal()" class="btn btn-info"><i
                                    class="fa fa-search"></i> {$SEARCH}</button>
                        <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                        {if isset($RESULTS)}
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <colgroup>
                                        <col span="1" style="width: 20%;">
                                        <col span="1" style="width: 20%;">
                                        <col span="1" style="width: 20%;">
                                        <col span="1" style="width: 20%;">
                                        <col span="1" style="width: 20%;">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>{$USERNAME}</th>
                                        <th>{$STAFF}</th>
                                        <th>{$TYPE}</th>
                                        <th>{$WHEN}</th>
                                        <th>{$ACTIONS}</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {foreach from=$RESULTS item=result}
                                        <tr>
                                            <td><a href="{$result.profile}" style="{$result.style}"><img
                                                            src="{$result.avatar}" class="rounded"
                                                            style="max-width:25px;max-height:25px;"> {$result.nickname}
                                                </a></td>
                                            <td><a href="{$result.staff_profile}" style="{$result.staff_style}"><img
                                                            src="{$result.staff_avatar}" class="rounded"
                                                            style="max-width:25px;max-height:25px;"> {$result.staff_nickname}
                                                </a></td>
                                            <td>
                                                {if $result.type_numeric == 1}
                                                    <span class="badge badge-danger">{$result.type}</span>
                                                {elseif $result.type_numeric == 2}
                                                    <span class="badge badge-warning">{$result.type}</span>
                                                {elseif $result.type_numeric == 3}
                                                    <span class="badge badge-danger">{$result.type}</span>
                                                {/if}
                                                {if $result.revoked == 1}
                                                    <span class="badge badge-info">{$REVOKED}</span>
                                                {/if}
                                                {if $result.acknowledged == 1}
                                                    <span class="badge badge-success">{$ACKNOWLEDGED}</span>
                                                {/if}
                                            </td>
                                            <td><span data-toggle="tooltip"
                                                      data-original-title="{$result.time_full}">{$result.time}</span>
                                            </td>
                                            <td><a href="{$result.link}" class="btn btn-info">{$VIEW_USER}</a></td>
                                        </tr>
                                    {/foreach}
                                    </tbody>
                                </table>
                            </div>
                            <br />
                            {$PAGINATION}
                        {else}
                            {$NO_PUNISHMENTS}
                        {/if}


                </div>
            </div>


        </div>

        {include file='footer.tpl'}
    </div>

    <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="searchModalLabel">{$SEARCH}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="InputUsername">{$USERNAME}</label>
                            <input type="text" placeholder="{$USERNAME}" class="form-control" id="InputUsername"
                                   name="username">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">{$CANCEL}</button>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </div>
                </form>
            </div>
        </div>
    </div>

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showSearchModal() {
            $('#searchModal').modal().show();
        }
    </script>

</body>
</html>