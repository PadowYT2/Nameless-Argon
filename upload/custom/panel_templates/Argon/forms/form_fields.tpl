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
                    <h1 class="text-white">{$FORMS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_FORM}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a class="btn btn-warning"
                                    href="{$BACK_LINK}">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr>

                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link" href="{$GENERAL_SETTINGS_LINK}">{$GENERAL_SETTINGS}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active">{$FIELDS}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{$PERMISSIONS_LINK}">{$PERMISSIONS}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{$STATUSES_LINK}">{$STATUSES}</a>
                        </li>
                    </ul>

                    </br>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <a href="{$NEW_FIELD_LINK}" class="btn btn-info">{$NEW_FIELD}</a>
                    </br>
                    </br>

                    {if count($FIELDS_LIST)}
                    <div class="table-responsive">
                        <table class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th style="width:35%">{$FIELD_NAME}</th>
                                    <th style="width:25%">{$TYPE}</th>
                                    <th style="width:25%">{$REQUIRED}</th>
                                    <th style="width:15%">
                                        <div class="float-md-right">{$ACTIONS}</div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$FIELDS_LIST item=field}
                                <tr>
                                    <td><a href="{$field.edit_link}">{$field.name}</a></td>
                                    <td>{$field.type}</td>
                                    <td>{if $field.required eq 1}<i class="fa fa-check-circle text-success"></i>{else}<i
                                            class="fa fa-times-circle text-danger"></i>{/if}</td>
                                    <td>
                                        <div class="float-md-right">
                                            <a class="btn btn-warning btn-sm" href="{$field.edit_link}"><i
                                                    class="fas fa-edit fa-fw"></i></a>
                                            <button class="btn btn-danger btn-sm" type="button"
                                                onclick="showDeleteModal('{$field.delete_link}')"><i
                                                    class="fas fa-trash fa-fw"></i></button>
                                        </div>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>

                    {else}
                    <hr>
                    {$NONE_FIELDS_DEFINED}
                    {/if}

                    {if !isset($PARTYDRAGEN_PREMIUM) || isset($PARTYDRAGEN_PREMIUM) && $PARTYDRAGEN_PREMIUM != true}
                    <center>
                        <p>Forms Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p>
                    </center>
                    {/if}
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

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
                        {$CONFIRM_DELETE_FIELD}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="#" id="deleteLink" class="btn btn-danger">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>

        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showDeleteModal(id) {
                $('#deleteLink').attr('href', id);
                $('#deleteModal').modal().show();
            }
        </script>

</body>

</html>