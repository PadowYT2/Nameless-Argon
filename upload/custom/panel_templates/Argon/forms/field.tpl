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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$EDITING_FIELD_FOR_X}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a class="btn btn-warning"
                                    href="{$BACK_LINK}">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr>

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form role="form" action="" method="post">
                        <div class="form-group">
                            <label for="InputName">{$FIELD_NAME}</label>
                            <input type="text" name="field_name" class="form-control" id="InputName"
                                placeholder="{$FIELD_NAME}" value="{$FIELD_NAME_VALUE}">
                        </div>
                        <div class="form-group">
                            <label for="type">{$TYPE}</label>
                            <select class="form-control" id="type" name="type">
                                {foreach from=$TYPES item=type}
                                <option value="{$type.id}" {if $TYPE_VALUE eq {$type.id}} selected{/if}>{$type.name}
                                </option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="InputOptions">{$OPTIONS} / {$CHECKBOX} / {$RADIO} - {$OPTIONS_HELP}</label>
                            <textarea rows="5" class="form-control" name="options" id="options"
                                placeholder="{$OPTIONS} / {$CHECKBOX} / {$RADIO}">{$OPTIONS_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="InputName">{$INFO}</label>
                            <textarea rows="2" class="form-control" name="info" id="info"
                                placeholder="{$INFO}">{$INFO_VALUE}</textarea>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="InputOrder">{$FIELD_ORDER}</label>
                                    <input type="number" min="1" class="form-control" id="InputOrder" name="order"
                                        value="{$ORDER_VALUE}">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="InputMinimum">{$MINIMUM_CHARACTERS}</label>
                                    <input type="number" min="0" class="form-control" id="InputMinimum" name="minimum"
                                        value="{$MINIMUM_CHARACTERS_VALUE}">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="InputMaximum">{$MAXIMUM_CHARACTERS}</label>
                                    <input type="number" min="0" class="form-control" id="InputMaximum" name="maximum"
                                        value="{$MAXIMUM_CHARACTERS_VALUE}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputrequired">{$REQUIRED}</label>
                            <input id="inputrequired" name="required" type="checkbox" class="js-switch" {if
                                $REQUIRED_VALUE eq 1} checked{/if} />
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