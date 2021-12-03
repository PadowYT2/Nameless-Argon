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
                    <h1 class="text-white">{$REPORTS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card shadow mb-4">
                <div class="card-body">

                    <a href="{$CHANGE_VIEW_LINK}" {if count($ALL_REPORTS)}style="margin-bottom: 15px"
                        {/if}class="btn btn-info">{$CHANGE_VIEW}</a>

                    {if isset($NO_REPORTS)}
                    <hr />
                    {/if}

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($ALL_REPORTS)}
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>{$USER_REPORTED}</th>
                                    <th>{$UPDATED_BY}</th>
                                    <th>{$COMMENTS}</th>
                                    <th>{$ACTIONS}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$ALL_REPORTS item=report}
                                <tr>
                                    <td><a href="{$report.user_profile}" style="{$report.user_reported_style}"><img
                                                src="{$report.user_reported_avatar}"
                                                style="max-height:25px;max-width:25px;" alt="{$report.user_reported}"
                                                class="rounded"> {$report.user_reported}</a><br /><span
                                            data-toggle="tooltip"
                                            data-original-title="{$report.reported_at_full}">{$report.reported_at}</span>
                                    </td>
                                    <td><a href="{$report.updated_by_profile}" style="{$report.updated_by_style}"><img
                                                src="{$report.updated_by_avatar}"
                                                style="max-height:25px;max-width:25px;" alt="{$report.updated_by}"
                                                class="rounded"> {$report.updated_by}</a><br /><span
                                            data-toggle="tooltip"
                                            data-original-title="{$report.updated_at_full}">{$report.updated_at}</span>
                                    </td>
                                    <td><i class="fa fa-comments" aria-hidden="true"></i> {$report.comments}
                                    </td>
                                    <td><a href="{$report.link}" class="btn btn-info">{$VIEW} &raquo;</a>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    </br>
                    {$PAGINATION}

                    {elseif isset($NO_REPORTS)}
                    {$NO_REPORTS}
                    {/if}

                </div>
            </div>


        </div>

        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

</body>

</html>