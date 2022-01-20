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
                    <h1 class="text-white">{$PACKAGES}</h1>
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

                    {if isset($NO_PACKAGES)}
                    <p>{$NO_PACKAGES}</p>
                    {else}
                    {foreach from=$ALL_CATEGORIES item=category}
                    {if count($category.packages)}
                    <div class="card card-default">
                        <div class="card-header">
                            {$category.name}
                        </div>
                        <div class="card-body">
                            {foreach from=$category.packages item=package name=package_loop}
                            {$package.name} <small>{$package.id_x}</small>
                            {if isset($package.edit_link)}
                            <span class="float-md-right">
                                <a href="{$package.edit_link}" class="btn btn-info btn-sm"><i
                                        class="fas fa-pencil-alt"></i></a>
                            </span>
                            {/if}
                            {if !$smarty.foreach.package_loop.last}
                            <hr />{/if}
                            {/foreach}
                        </div>
                    </div>
                    {/if}
                    {/foreach}
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>