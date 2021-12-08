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
                    <a class="btn btn-info" href="{$NEW_CATEGORY_LINK}">{$NEW_CATEGORY}</a>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($CATEGORIES_LIST)}
                    <div class="card card-default">
                        <div class="card-header">
                            {$CATEGORIES}
                        </div>
                        <div class="card-body">
                            {assign var="number" value=$CATEGORIES_LIST|count}
                            {assign var="i" value=1}
                            {foreach from=$CATEGORIES_LIST item=category}
                            <a href="{$category.edit_link}">{$category.name}</a>
                            <div class="float-md-right">
                                {if $i > 1}
                                <a href="{$category.order_up}" class="btn btn-info"><i class="fa fa-chevron-up"
                                        aria-hidden="true"></i></a>
                                {/if}
                                {if $i < $number} <a href="{$category.order_down}" class="btn btn-info"><i
                                        class="fa fa-chevron-down" aria-hidden="true"></i></a>
                                    {/if}
                                    <a href="{$category.delete_link}" class="btn btn-danger"><i class="fa fa-trash"
                                            aria-hidden="true"></i></a>
                            </div>
                            <br />
                            {$category.description}
                            {if $i
                            < $number} <hr />
                            {/if}
                            {assign var="i" value=$i+1}
                            {/foreach}
                        </div>
                    </div>
                    {else}
                    {$NO_CATEGORIES}
                    {/if}
                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>