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
                    <h1 class="text-white">{$COUPONS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_COUPON}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <colgroup>
                                <col span="1" style="width: 50%">
                                <col span="1" style="width: 50%">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><strong>{$COUPON_CODE}</strong></td>
                                    <td>{$COUPON_CODE_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$COUPON_NOTE}</strong></td>
                                    <td>{$COUPON_NOTE_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$EFFECTIVE_ON}</strong></td>
                                    <td>{$EFFECTIVE_ON_VALUE}</td>
                                </tr>
                                {if $EFFECTIVE_ON_TYPE == 'package'}
                                <tr>
                                    <td><strong>{$PACKAGES}</strong></td>
                                    <td>{if count($PACKAGES_VALUE)}{foreach from=$PACKAGES_VALUE item=package
                                        name=packages}{$package}{if not $smarty.foreach.packages.last},
                                        {/if}{/foreach}{/if}</td>
                                </tr>
                                {elseif $EFFECTIVE_ON_TYPE == 'category'}
                                <tr>
                                    <td><strong>{$CATEGORIES}</strong></td>
                                    <td>{if count($CATEGORIES_VALUE)}{foreach from=$CATEGORIES_VALUE item=category
                                        name=categories}{$category}{if not $smarty.foreach.categories.last},
                                        {/if}{/foreach}{/if}</td>
                                </tr>
                                {/if}
                                <tr>
                                    <td><strong>{$BASKET_TYPE}</strong></td>
                                    <td>{$BASKET_TYPE_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$DISCOUNT_TYPE}</strong></td>
                                    <td>{$DISCOUNT_TYPE_VALUE}</td>
                                </tr>
                                {if $DISCOUNT_TYPE_RAW == 'value'}
                                <tr>
                                    <td><strong>{$VALUE}</strong></td>
                                    <td>{$CURRENCY}{$DISCOUNT_VALUE}</td>
                                </tr>
                                {elseif $DISCOUNT_TYPE_RAW == 'percentage'}
                                <tr>
                                    <td><strong>{$PERCENTAGE}</strong></td>
                                    <td>{$DISCOUNT_PERCENTAGE}%</td>
                                </tr>
                                {/if}
                                <tr>
                                    <td><strong>{$START_DATE}</strong></td>
                                    <td>{$START_DATE_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$END_DATE}</strong></td>
                                    <td>{$END_DATE_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$USES}</strong></td>
                                    <td>{if $UNLIMITED_VALUE}{$UNLIMITED_USAGE}{else}{$USES_COUNT}{/if}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$MINIMUM_SPEND}</strong></td>
                                    <td>{$CURRENCY}{$MINIMUM_SPEND_VALUE}</td>
                                </tr>
                                {if $USER_COUPON_FOR_VALUE}
                                <tr>
                                    <td><strong>{$USER_COUPON_FOR}</strong></td>
                                    <td>{$USER_COUPON_FOR_VALUE}</td>
                                </tr>
                                {/if}
                            </tbody>
                        </table>
                    </div>

                    <div class="callout callout-info">
                        <h5><i class="icon fa fa-info-circle"></i> {$INFO}</h5>
                        {$EDIT_IN_BUYCRAFT}
                    </div>

                </div>
            </div>
        </div>

        {if isset($DELETE_COUPON)}
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$DELETE_COUPON}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_DELETE_COUPON}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$CANCEL}</button>
                        <form action="" method="post">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="id" value="{$COUPON_ID}">
                            <input type="submit" class="btn btn-danger" value="{$DELETE_COUPON}">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        {/if}

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

        <script type="text/javascript">
            {if isset($DELETE_COUPON)}
            function showDeleteModal() {
                $('#deleteModal').modal().show();
            }
            {/if}
        </script>

</body>

</html>