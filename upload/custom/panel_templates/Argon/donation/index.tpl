{include file='header.tpl'}

<body>

    <!-- Sidebar -->
    {include file='sidebar.tpl'}

    <div class="main-content">
        {include file='navbar.tpl'}

        <!-- Header -->
        <div class="header bg-gradient-info pb-9 pt-5 pt-md-7">
            <div class="container-fluid">
                <div class="header-body"></div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="?action=update" method="POST">
                        <div class="form-group">
                            <label for="">Email Paypal</label>
                            <input type="text" name="email" class="form-control" value="{$EMAIL}">
                        </div>
                        <div class="form-group">
                            <label for="">Währung</label>
                            <select name="currency" class="form-control">
                                <option value="USD">USD</option>
                                <option value="EUR" {if $CURRENCY=='EUR' }selected{/if}>EUR</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-info w-100">Speichern</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>