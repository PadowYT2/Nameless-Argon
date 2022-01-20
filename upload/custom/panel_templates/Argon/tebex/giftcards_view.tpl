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
                    <h1 class="text-white">{$GIFT_CARDS}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$VIEWING_GIFT_CARD}</h3>
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
                                <col span="1" style="width: 50%;">
                                <col span="1" style="width: 50%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><strong>{$GIFT_CARD_CODE}</strong></td>
                                    <td>{$GIFT_CARD_CODE_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$GIFT_CARD_START_BALANCE}</strong></td>
                                    <td>{$GIFT_CARD_START_BALANCE_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$GIFT_CARD_BALANCE_REMAINING}</strong></td>
                                    <td>{$GIFT_CARD_BALANCE_REMAINING_VALUE}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$GIFT_CARD_ACTIVE}</strong></td>
                                    <td>{if $GIFT_CARD_VOID}<i
                                            class="fas fa-times-circle fa-2x text-danger"></i>{else}<i
                                            class="fas fa-check-circle fa-2x text-success"></i>{/if}</td>
                                </tr>
                                <tr>
                                    <td><strong>{$GIFT_CARD_NOTE}</strong></td>
                                    <td>{$GIFT_CARD_NOTE_VALUE}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    {if $CAN_UPDATE_GIFT_CARD && !$GIFT_CARD_VOID}
                    <hr />

                    <h4>{$ADD_CREDIT}</h4>
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="inputCredit">{$CREDIT}</label>
                            <input type="number" class="form-control" id="inputCredit" name="credit"
                                placeholder="{$CREDIT}">
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                    <h4>{$VOID_GIFT_CARD}</h4>
                    <button type="button" class="btn btn-danger" data-toggle="modal"
                        data-target="#deleteModal">{$VOID_GIFT_CARD}</button>

                    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
                        aria-labelledby="deleteModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="deleteModalLabel">{$VOID_GIFT_CARD}</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    {$CONFIRM_VOID_GIFT_CARD}
                                </div>
                                <form action="" method="post">
                                    <input type="hidden" name="action" value="void">
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">{$CANCEL}</button>
                                        <button type="submit" class="btn btn-danger">{$VOID_GIFT_CARD}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>