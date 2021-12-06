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
                    <h1 class="text-white">{$TITLE}</h1>
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


                    <h4>{$CHANGE_CONFIG}</h4>
                    <form action="" id="upload_file" class="d-flex w-100" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="file" name="config" id="upload-file-config" hidden onchange='uploadFile(this)'>

                        <label for="upload-file-config" id="file-name-label"
                            class="btn btn-secondary w-100">{$UPLOAD_CONFIG}</label>
                        <input type="submit" value="{$SUBMIT}" class="btn btn-info ml-2" />
                    </form>

                    <hr />

                    <h4>{$GEN_CONFIG}</h4>
                    <a href="{$GEN_CONFIG_SITE}" class="btn btn-info btn-block">{$CLICK_TO_GO}</a>

                    <script>
                        var file_name_o = '{$FILENAME}';
                        {literal}
                            function uploadFile(target) {
                                document.getElementById("file-name-label").innerHTML = `${file_name_o}: ${target.files[0].name}`;
                            }
                        {/literal}
                    </script>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>