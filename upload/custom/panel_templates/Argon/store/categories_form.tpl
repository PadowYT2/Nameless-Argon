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

            <div class="card">
                <div class="card-body">

                    <div class="row" style="margin-bottom: 10px;">
                        <div class="col-md-9">
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CATEGORY_TITLE}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right">
                                <a class="btn btn-warning" href="{$BACK_LINK}">{$BACK}</a>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputName">{$CATEGORY_NAME}</label>
                            <input type="text" name="name" class="form-control" id="InputName"
                                value="{$CATEGORY_NAME_VALUE}" placeholder="{$CATEGORY_NAME}" required>
                        </div>
                        <div class="form-group">
                            <strong><label for="inputDescription">{$CATEGORY_DESCRIPTION}</label></strong>
                            <textarea id="inputDescription" name="description">{$CATEGORY_DESCRIPTION_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="inputParentCategory">{$PARENT_CATEGORY}</label>
                            <select name="parent_category" class="form-control" id="inputParentCategory" required>
                                <option value="0" {if $PARENT_CATEGORY_VALUE==0} selected{/if}>{$NO_PARENT}</option>
                                {foreach from=$PARENT_CATEGORY_LIST item=category}
                                <option value="{$category.id}" {if $PARENT_CATEGORY_VALUE=={$category.id}}
                                    selected{/if}>{$category.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="inputOnlySubCategories">{$ONLY_SUBCATEGORIES}</label>
                            <input id="inputOnlySubCategories" name="only_subcategories" type="checkbox"
                                class="js-switch" {if $ONLY_SUBCATEGORIES_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="inputHidden">{$HIDE_CATEGORY}</label>
                            <input id="inputHidden" name="hidden" type="checkbox" class="js-switch" {if
                                $HIDE_CATEGORY_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <label for="inputDisabled">{$DISABLE_CATEGORY}</label>
                            <input id="inputDisabled" name="disabled" type="checkbox" class="js-switch" {if
                                $DISABLE_CATEGORY_VALUE eq 1} checked{/if} />
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                        </div>
                    </form>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

</body>

</html>