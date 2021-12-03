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
                    <h1 class="text-white">{$LOG_TITLE}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$LOG_TITLE}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}" class="btn btn-info">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}


                    <div class="table-responsive">
                        <table class="table table-bordered table-hover dataTable">
                            <thead>
                                <tr>
                                    {foreach from=$COL_TITLES item=col_title}
                                    <td>{$col_title}</td>
                                    {/foreach}
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$ROWS item=row}
                                <tr>
                                    {assign var=i value=0}
                                    {while $i < count($row)} <td{if isset($row.$i.order)} data-order="{$row.$i.order}"
                                        {/if}>
                                        {$row.$i.content}
                                        </td>
                                        {assign var=i value=$i+1}
                                        {/while}
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>


        </div>
        {include file='footer.tpl'}
    </div>
    {include file='scripts.tpl'}

</body>

</html>