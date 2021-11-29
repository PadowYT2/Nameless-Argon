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
                    <h1 class="text-white">{$MODULES}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a class="btn btn-info" style="margin-bottom: 15px;"
                        href="{$INSTALL_MODULE_LINK}">{$INSTALL_MODULE}</a>
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <colgroup>
                                <col width="75%">
                                <col width="25%">
                            </colgroup>
                            {foreach from=$MODULE_LIST item=module}
                            <tr>
                                <td>
                                    <strong>{$module.name}</strong> <small>{$module.version}</small>
                                    {if $module.version_mismatch}
                                    &nbsp;
                                    <button role="button" class="btn btn-sm btn-warning" data-toggle="popover"
                                        data-title="{$WARNING}" data-content="{$module.version_mismatch}"><i
                                            class="fa fa-exclamation-triangle"></i></button>
                                    {/if}
                                    <br />
                                    <small>{$module.author_x}</small>
                                </td>
                                <td>
                                    <div class="float-md-right">
                                        {if $module.enabled}
                                        {if $module.disable_link}
                                        <form action="{$module.disable_link}" method="post">
                                            <input type="hidden" name="token" value="{$TOKEN}" />
                                            <input type="submit" class="btn btn-danger btn-sm" value="{$DISABLE}" />
                                        </form>
                                        {else}
                                        <a class="btn btn-warning btn-sm disabled"><i class="fa fa-lock"></i></a>
                                        {/if}
                                        {else}
                                        <form action="{$module.enable_link}" method="post">
                                            <input type="hidden" name="token" value="{$TOKEN}" />
                                            <input type="submit" class="btn btn-info btn-sm" value="{$ENABLE}" />
                                        </form>
                                        {/if}
                                    </div>
                                </td>
                            </tr>
                            {/foreach}
                        </table>
                    </div>

                    <br />
                    <h5>{$FIND_MODULES}</h5>
                    <br />

                    {if isset($WEBSITE_MODULES_ERROR)}
                    <div class="alert bg-danger text-white">{$WEBSITE_MODULES_ERROR}</div>
                    {/if}

                    {if count($WEBSITE_MODULES)}
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <colgroup>
                                <col width="70%">
                                <col width="20%">
                                <col width="10%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>{$MODULE}</th>
                                    <th>{$STATS}</th>
                                    <th>{$ACTIONS}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$WEBSITE_MODULES item=item}
                                <tr>
                                    <td>
                                        <strong>{$item.name}</strong> <small>{$item.latest_version}</small>
                                        <br />
                                        <small>{$item.author_x}</small>
                                    </td>
                                    <td>
                                        <div class="star-rating view">
                                            <span class="far fa-star" data-rating="1" style="color:gold;"></span>
                                            <span class="far fa-star" data-rating="2" style="color:gold"></span>
                                            <span class="far fa-star" data-rating="3" style="color:gold;"></span>
                                            <span class="far fa-star" data-rating="4" style="color:gold;"></span>
                                            <span class="far fa-star" data-rating="5" style="color:gold;"></span>
                                            <input type="hidden" name="rating" class="rating-value"
                                                value="{($item.rating/10)|round}">
                                        </div>
                                        {$item.downloads_full}<br />
                                        {$item.views_full}
                                    </td>
                                    <td><a href="{$item.url}" target="_blank" class="btn btn-info btn-sm">{$VIEW}
                                            &raquo;</a></td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    <div class="alert bg-danger text-white">{$UNABLE_TO_RETRIEVE_MODULES}</div>
                    {/if}

                    </br>
                    <a href="{$VIEW_ALL_MODULES_LINK}" class="btn btn-info" target="_blank">{$VIEW_ALL_MODULES}
                        &raquo;</a>

                </div>
            </div>


        </div>

        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

    <script type="text/javascript">
        var $star_rating = $('.star-rating.view .fa-star');

        var SetRatingStar = function (type = 0) {
            if (type === 0) {
                return $star_rating.each(function () {
                    if (parseInt($(this).parent().children('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
                        return $(this).removeClass('far').addClass('fas');
                    } else {
                        return $(this).removeClass('fas').addClass('far');
                    }
                });
            }
        };

        SetRatingStar();
    </script>

</body>

</html>