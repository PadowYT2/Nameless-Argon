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
                    <h1 class="text-white">{$PRODUCTS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <div class="float-md-right mr-sm-2">
                        <a style="display:inline" href="{$NEW_CATEGORY_LINK}" class="btn btn-info"><i
                                class="fa fa-plus-circle"></i>{$NEW_CATEGORY}</a>
                    </div>
                    <div class="float-md-right mr-sm-2">
                        <a style="display:inline" href="{$NEW_PRODUCT_LINK}" class="btn btn-info"><i
                                class="fa fa-plus-circle"></i>{$NEW_PRODUCT}</a>
                    </div>
                    </br>
                    <hr />

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($NO_PRODUCTS)}
                    <p>{$NO_PRODUCTS}</p>
                    {else}
                    {foreach from=$ALL_CATEGORIES item=category}
                    <div class="card card-default">
                        <div class="card-header">
                            <strong>{$category.name}</strong>
                            <span class="float-md-right">
                                <a class="btn btn-warning btn-sm" href="{$category.edit_link}"><i
                                        class="fas fa-pencil-alt"></i></a>
                                <button class="btn btn-danger btn-sm" type="button"
                                    onclick="showDeleteCategoryModal('{$category.delete_link}')"><i
                                        class="fas fa-trash fa-fw"></i></button>
                            </span>
                        </div>
                        <div class="card-body">
                            {if count($category.products)}
                            {foreach from=$category.products item=product name=product_loop}
                            <div class="row">
                                <div class="col-md-4">
                                    {$product.name} <small>{$product.id_x}</small>
                                </div>
                                <div class="col-md-4">
                                    <center>{$product.price}</center>
                                </div>
                                <div class="col-md-4">
                                    {if isset($product.edit_link)}
                                    <span class="float-md-right">
                                        <a class="btn btn-warning btn-sm" href="{$product.edit_link}"><i
                                                class="fas fa-pencil-alt"></i></a>
                                        <button class="btn btn-danger btn-sm" type="button"
                                            onclick="showDeleteProductModal('{$product.delete_link}')"><i
                                                class="fas fa-trash fa-fw"></i></button>
                                    </span>
                                    {/if}
                                </div>
                            </div>
                            {if !$smarty.foreach.product_loop.last}
                            <hr />{/if}
                            {/foreach}
                            {/if}
                        </div>
                    </div>
                    {/foreach}
                    {/if}

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        <div class="modal fade" id="deleteCategoryModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_DELETE_CATEGORY}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="#" id="deleteCategoryLink" class="btn btn-info">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="deleteProductModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        {$CONFIRM_DELETE_PRODUCT}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                        <a href="#" id="deleteProductLink" class="btn btn-info">{$YES}</a>
                    </div>
                </div>
            </div>
        </div>

        {include file='scripts.tpl'}

        <script type="text/javascript">
            function showDeleteCategoryModal(id) {
                $('#deleteCategoryLink').attr('href', id);
                $('#deleteCategoryModal').modal().show();
            }
            function showDeleteProductModal(id) {
                $('#deleteProductLink').attr('href', id);
                $('#deleteProductModal').modal().show();
            }
        </script>

</body>

</html>