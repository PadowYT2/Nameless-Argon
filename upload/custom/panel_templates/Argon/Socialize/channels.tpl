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
                    <h1 class="text-white">{$GENERAL_SETTINGS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <!-- Success and Error Alerts -->
            {include file='includes/alerts.tpl'}

            {if isset($EDIT_ID)}
            <div class="card shadow mb-4">
                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="search">{$LANG.change_channel_name}</label>
                            <input type="text" class="form-control" id="new_name" name="new_name" value="{$EDIT_NAME}">
                        </div>
                        <div class="form-group">
                            <label for="InputColour">{$LANG.background_channel}</label>
                            <div class="input-group">
                                <input type="color" name="channelColor" class="form-control" id="channelColor"
                                    value="{$EDIT_BACKGROUND_COLOR}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputColour">{$LANG.channel_text_background}</label>
                            <div class="input-group">
                                <input type="color" name="channelTextColor" class="form-control" id="channelTextColor"
                                    value="{$EDIT_TEXT_COLOR}">
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="afcae16e9c1adb5db78c3fc67af5f26b">
                            <input type="hidden" name="action" value="RENAME_CHANNEL">
                            <input type="hidden" name="channel_id" value="{$EDIT_ID}">
                            <input type="submit" class="btn btn-info" value="Submit">
                            <a href="/panel/socialize/channels" class="btn btn-danger">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
            {else}
            <div class="card shadow mb-4">
                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="search">{$LANG.create_channel}</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="InputColour">{$LANG.background_channel}</label>
                            <div class="input-group">
                                <input type="color" name="channelColor" class="form-control" id="channelColor"
                                    value="#2185d0">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputColour">{$LANG.channel_text_background}</label>
                            <div class="input-group">
                                <input type="color" name="channelTextColor" class="form-control" id="channelTextColor"
                                    value="#ffffff">
                            </div>
                        </div>


                        <div class="form-group">
                            <input type="hidden" name="token" value="afcae16e9c1adb5db78c3fc67af5f26b">
                            <input type="hidden" name="action" value="CREATE_CHANNEL">
                            <input type="submit" class="btn btn-info" value="Submit">
                        </div>
                    </form>
                </div>
            </div>


            <table class="table table-striped">
                <colgroup>
                    <col width="75%">
                    <col width="25%">
                </colgroup>
                <tbody>
                    {if count($CHANNELS) <= 0} <div class="card shadow border-left-info">
                        <div class="card-body">
                            <h5><i class="icon fa fa-info-circle"></i> No channels found.</h5>
                            There is no channels!
                        </div>
        </div>
        {else}
        {foreach $CHANNELS as $item}
        <tr>
            <td>
                <strong>{$item.name}</strong>
            </td>
            <td>
                <div class="float-md-right">

                    <a class="btn btn-info btn-sm" href="/panel/socialize/channels?edit={$item.id}"><i
                            class="fas fa-tag"></i></a>

                    <form style="display: inline" action="" method="post">
                        <input type="hidden" name="action" value="DELETE_CHANNEL">
                        <input type="hidden" name="channel_id" value="{$item.id}">
                        <button type="submit" class="btn btn-danger btn-sm" href=""><i
                                class="fas fa-trash"></i></button>
                    </form>
                </div>
            </td>
        </tr>
        {/foreach}
        {/if}

        </tbody>
        </table>

        {/if}
    </div>

    {include file='footer.tpl'}

    {include file='scripts.tpl'}
    <script type="text/javascript">
        history.pushState({}, "", "")
    </script>
</body>

</html>