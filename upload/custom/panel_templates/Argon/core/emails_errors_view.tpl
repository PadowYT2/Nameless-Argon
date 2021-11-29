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
                    <h1 class="text-white">{$EMAIL_ERRORS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                    <hr />

                    <h5>{$VIEWING_ERROR}</h5>

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tr>
                                <td>{$TYPE}</td>
                                <td>{$TYPE_VALUE}</td>
                            </tr>
                            <tr>
                                <td>{$DATE}</td>
                                <td>{$DATE_VALUE}</td>
                            </tr>
                            <tr>
                                <td>{$USERNAME}</td>
                                <td>{$USERNAME_VALUE}</td>
                            </tr>
                            <tr>
                                <td>{$CONTENT}</td>
                                <td>{$CONTENT_VALUE}</td>
                            </tr>
                        </table>
                    </div>

                    <h5>{$ACTIONS}</h5>

                    {if $TYPE_ID eq 1}
                    <a class="btn btn-secondary" href="{$VALIDATE_USER_LINK}">{$VALIDATE_USER_TEXT}</a>
                    {elseif $TYPE_ID eq 4}
                    <button class="btn btn-secondary" type="button"
                        onclick="showRegistrationModal()">{$SHOW_REGISTRATION_LINK}</button>
                    {/if}

                    <a class="btn btn-danger" href="#" onclick="showDeleteModal()">{$DELETE_ERROR}</a>

                </div>
            </div>


        </div>

        {include file='footer.tpl'}
    </div>
    </div>

    <!-- Show registration link modal -->
    <div class="modal fade" id="registrationModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{$REGISTRATION_LINK}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$REGISTRATION_LINK_VALUE}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">{$CLOSE}</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Delete error modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{$ARE_YOU_SURE}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$CONFIRM_DELETE_ERROR}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                    <a href="{$DELETE_ERROR_LINK}" class="btn btn-info">{$YES}</a>
                </div>
            </div>
        </div>
    </div>

    {include file='scripts.tpl'}

    <script type="text/javascript">
        function showDeleteModal() {
            $('#deleteModal').modal().show();
        }

        function showRegistrationModal() {
            $('#registrationModal').modal().show();
        }
    </script>

</body>

</html>