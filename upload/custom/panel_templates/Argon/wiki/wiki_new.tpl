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
                    <h1 class="text-white">{$WIKI}</h1>
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
                            <h3 style="margin-top: 10px; margin-bottom: 7px;">{$NEW_PAGE}</h3>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$BACK_LINK}"
                                    class="btn btn-warning">{$BACK}</a></span>
                        </div>
                    </div>
                    <hr />
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <form action="" method="post">
                        <div class="form-group">
                            <label for="InputPageTitle">{$WIKI_PAGE_TITLE}</label>
                            <input type="text" id="InputPageTitle" placeholder="{$WIKI_PAGE_TITLE}"
                                name="wiki_page_title" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="InputWikiID">{$WIKI_PAGE_ID}</label>
                            <input type="text" id="InputWikiID" placeholder="{$WIKI_PAGE_ID}" name="wiki_page_id"
                                class="form-control" value="{$WIKI_PAGE_ID_VALUE}">
                        </div>
                        {if !$SUB_PAGED}
                        <div class="form-group">
                            <label for="InputWikiParent">{$WIKI_PAGE_PARENT}</label>
                            <select class="form-control" id="InputWikiParent" name="InputWikiParent">
                                <option value=null>none</option>
                                {foreach from=$WIKI_PAGES item=wiki_page}
                                {if ($wiki_page->getParent() == "null" && $wiki_page->getNameID() !=
                                $WIKI_PAGE_ID_VALUE)}
                                <option value={$wiki_page->getNameID()} {if $wiki_page->getNameID() eq
                                    $WIKI_PAGE_PARENT_VALUE} selected{/if}>{$wiki_page->getNameID()}
                                </option>
                                {/if}
                                {/foreach}
                            </select>
                        </div>
                        {/if}


                        <div class="form-group">
                            <label for="InputWikiButton">{$WIKI_PAGE_BUTTON}</label>
                            <input type="text" id="InputWikiButton" placeholder="{$WIKI_PAGE_BUTTON}"
                                name="wiki_page_button" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="InputWikiIcon">{$WIKI_PAGE_ICON}</label>
                            <input type="text" id="InputWikiIcon" placeholder="{$ICON_EXAMPLE}" name="wiki_page_icon"
                                class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="InputWikiContext">{$WIKI_PAGE_CONTEXT}</label>
                            <textarea name="wiki_page_context" rows="3" id="InputWikiContext" class="form-control"
                                placeholder="{$WIKI_PAGE_CONTEXT}">{$WIKI_PAGE_CONTEXT_VALUE}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="InputWikiEnabled">{$WIKI_PAGE_ENABLED}</label>
                            <select class="form-control" id="InputWikiEnabled" name="InputWikiEnabled">
                                <option value="1" selected>Enable</option>
                                <option value="0">Disable</option>
                            </select>
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