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
                    <h1 class="text-white">{$PRIVACY_AND_TERMS}</h1>
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

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputPrivacy">{$PRIVACY_POLICY}</label>
                            <textarea style="width:100%" rows="10" name="privacy"
                                      id="InputPrivacy">{$PRIVACY_POLICY_VALUE}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="InputTerms">{$TERMS_AND_CONDITIONS}</label>
                            <textarea style="width:100%" rows="10" name="terms"
                                      id="InputTerms">{$TERMS_AND_CONDITIONS_VALUE}</textarea>
                        </div>

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

</body>
</html>