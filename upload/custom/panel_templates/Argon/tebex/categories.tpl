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
                    <h1 class="text-white">{$CATEGORIES}</h1>
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

                    {if isset($NO_CATEGORIES)}
                    <p>{$NO_CATEGORIES}</p>
                    {else}
                    {foreach from=$ALL_CATEGORIES item=category}
                    <div class="card card-default">
                        <div class="card-header">
                            {$category.name}
                            {if isset($category.edit_link)}
                            <span class="float-md-right">
                                <a href="{$category.edit_link}" class="btn btn-info btn-sm"><i
                                        class="fas fa-pencil-alt"></i></a>
                            </span>
                            {/if}
                        </div>
                        <div class="card-body">
                            {if isset($category.subcategories) && count($category.subcategories)}
                            {foreach from=$category.subcategories item=subcategory name=categories_loop}
                            {$subcategory.name}
                            {if isset($subcategory.edit_link)}
                            <span class="float-md-right">
                                <a href="{$subcategory.edit_link}" class="btn btn-info btn-sm"><i
                                        class="fas fa-pencil-alt"></i></a>
                            </span>
                            {/if}
                            {if not $smarty.foreach.categories_loop.last}
                            <hr />{/if}
                            {/foreach}
                            {else}
                            {$category.no_subcategories}
                            {/if}
                        </div>
                    </div>
                    {/foreach}
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>