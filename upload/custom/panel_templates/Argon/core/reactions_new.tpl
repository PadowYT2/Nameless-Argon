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
                    <h1 class="text-white">{$REACTIONS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a href="#" class="btn btn-warning" onclick="showCancelModal()">{$CANCEL}</a>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputReactionName">{$NAME}</label>
                            <input type="text" class="form-control" name="name" id="InputReactionName"
                                placeholder="{$NAME}" value="{$NAME_VALUE}">
                        </div>

                        <div class="form-group">
                            <label for="InputReactionHTML">{$HTML}</label>
                            <input type="text" class="form-control" name="html" id="InputReactionHTML"
                                placeholder="{$HTML}" value="{$HTML_VALUE}">
                        </div>

                        <div class="form-group">
                            <label for="InputReactionType">{$TYPE}</label>
                            <select name="type" class="form-control" id="InputReactionType">
                                <option value="2">{$POSITIVE}</option>
                                <option value="1">{$NEUTRAL}</option>
                                <option value="-1">{$NEGATIVE}</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="InputEnabled">{$ENABLED}</label>
                            <input type="checkbox" name="enabled" class="js-switch" />
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" value="{$SUBMIT}" class="btn btn-info">
                        </div>
                    </form>

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>

    <!-- Cancel modal -->
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

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showCancelModal() {
            $('#cancelModal').modal().show();
        }
    </script>

</body>

</html>