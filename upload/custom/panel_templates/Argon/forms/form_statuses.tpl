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
                            <a class="nav-link" href="{$FIELDS_LINK}">{$FIELDS}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{$PERMISSIONS_LINK}">{$PERMISSIONS}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active">{$STATUSES}</a>
                        </li>
                    </ul>

                    </br>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form role="form" action="" method="post">
                        <div class="form-group">
                            <label for="status_forms">{$SELECT_STATUSES}</label></br>
                            {foreach from=$ALL_STATUSES item=status}
                            <div class="form-check-inline">
                                <input type="checkbox" class="form-check-input" name="status[]" id="{$status.id}"
                                    value="{$status.id}" {if $status.selected} checked="checked" {/if}>
                                <label class="form-check-label" for="{$status.id}">{$status.html} </label>
                            </div>
                            {/foreach}
                        </div>

                        <div class="form-group">
                            <label for="status_forms">{$CHANGE_STATUS_ON_COMMENT}</label>
                            <select class="form-control" id="comment_status" name="comment_status">
                                <option value="0" {if $COMMENT_STATUS_VALUE eq 0} selected{/if}>{$DISABLED}</option>
                                {foreach from=$ALL_STATUSES item=status}
                                <option value="{$status.id}" {if $COMMENT_STATUS_VALUE eq {$status.id}} selected{/if}>
                                    {$status.html}</option>
                                {/foreach}
                            </select>
                        </div>

                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                    {if !isset($PARTYDRAGEN_PREMIUM)}
                    <center>
                        <p>Forms Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p>
                    </center>
                    {/if}
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>