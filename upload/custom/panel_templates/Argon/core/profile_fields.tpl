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
                    <h1 class="text-white">{$PROFILE_FIELDS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">

                    <a class="btn btn-info" {if count($FIELDS)}style="margin-bottom: 15px"
                        {/if}href="{$NEW_FIELD_LINK}">{$NEW_FIELD}</a>
                    {if !count($FIELDS)}
                    <hr />
                    {/if}

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($FIELDS)}
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>{$FIELD_NAME}</th>
                                    <th>{$TYPE}</th>
                                    <th>{$REQUIRED}</th>
                                    <th>{$EDITABLE}</th>
                                    <th>{$PUBLIC}</th>
                                    <th>{$FORUM_POSTS}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$FIELDS item=field}
                                <tr>
                                    <td><a href="{$field.edit_link}">{$field.name}</a></td>
                                    <td>{$field.type}</td>
                                    <td>{if $field.required eq 1}
                                        <i class="fa fa-check-circle text-success"></i>
                                        {else}
                                        <i class="fa fa-times-circle text-danger"></i>
                                        {/if}
                                    </td>
                                    <td>{if $field.editable eq 1}
                                        <i class="fa fa-check-circle text-success"></i>
                                        {else}
                                        <i class="fa fa-times-circle text-danger"></i>
                                        {/if}
                                    </td>
                                    <td>{if $field.public eq 1}
                                        <i class="fa fa-check-circle text-success"></i>
                                        {else}
                                        <i class="fa fa-times-circle text-danger"></i>
                                        {/if}
                                    </td>
                                    <td>{if $field.forum_posts eq 1}
                                        <i class="fa fa-check-circle text-success"></i>
                                        {else}
                                        <i class="fa fa-times-circle text-danger"></i>
                                        {/if}
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    {$NO_FIELDS}
                    {/if}

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>