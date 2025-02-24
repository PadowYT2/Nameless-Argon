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
                    <h1 class="text-white">{$IMAGES}</h1>
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

                    {if isset($BACKGROUNDS_NOT_WRITABLE) || isset($TEMPLATE_BANNERS_DIRECTORY_NOT_WRITABLE) ||
                    isset($LOGOS_DIRECTORY_NOT_WRITABLE) || isset($FAVICONS_DIRECTORY_NOT_WRITABLE)}
                    <div class="alert alert-danger alert-dismissible">
                        <h5><i class="icon fas fa-exclamation-triangle"></i> {$ERRORS_TITLE}</h5>
                        <ul>
                            {if isset($BACKGROUNDS_NOT_WRITABLE)}
                            <li>{$BACKGROUNDS_NOT_WRITABLE}</li>
                            {/if}

                            {if isset($TEMPLATE_BANNERS_DIRECTORY_NOT_WRITABLE)}
                            <li>{$TEMPLATE_BANNERS_DIRECTORY_NOT_WRITABLE}</li>
                            {/if}

                            {if isset($LOGOS_DIRECTORY_NOT_WRITABLE)}
                            <li>{$LOGOS_DIRECTORY_NOT_WRITABLE}</li>
                            {/if}

                            {if isset($FAVICONS_DIRECTORY_NOT_WRITABLE)}
                            <li>{$FAVICONS_DIRECTORY_NOT_WRITABLE}</li>
                            {/if}
                        </ul>
                    </div>
                    {/if}

                    <p>{$BACKGROUND_IMAGE} <span class="badge badge-info" data-toggle="popover" data-title="{$INFO}"
                            data-content="{$BACKGROUND_IMAGE_INFO}"><i class="fa fa-question"></i></p>

                    <form action="" method="post" style="display:inline;">
                        <select name="bg" class="image-picker show-html">
                            {foreach from=$BACKGROUND_IMAGES_ARRAY item=image}
                            <option data-img-src="{$image.src}" value="{$image.value}" {if $image.selected}
                                selected{/if}>{$image.n}</option>
                            {/foreach}
                        </select>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </form>

                    <a href="{$RESET_LINK}" class="btn btn-danger">{$RESET}</a>
                    <button class="btn btn-info" data-toggle="modal"
                        data-target="#uploadModal">{$UPLOAD_NEW_IMAGE}</button>

                    <hr />

                    <p>{$BANNER_IMAGE}</p>

                    <form action="" method="post" style="display:inline;">
                        <select name="banner" class="image-picker show-html">
                            {foreach from=$BANNER_IMAGES_ARRAY item=image}
                            <option data-img-src="{$image.src}" value="{$image.value}" {if $image.selected}
                                selected{/if}>{$image.n}</option>
                            {/foreach}
                        </select>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </form>

                    <a href="{$RESET_BANNER_LINK}" class="btn btn-danger">{$RESET_BANNER}</a>
                    <button class="btn btn-info" data-toggle="modal"
                        data-target="#uploadBannerModal">{$UPLOAD_NEW_IMAGE}</button>

                    <hr />

                    <p>{$LOGO_IMAGE}</p>

                    <form action="" method="post" style="display:inline;">
                        <select name="logo" class="image-picker show-html">
                            {foreach from=$LOGO_IMAGES_ARRAY item=image}
                            <option data-img-src="{$image.src}" value="{$image.value}" {if $image.selected}
                                selected{/if}>{$image.n}</option>
                            {/foreach}
                        </select>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </form>

                    <a href="{$RESET_LOGO_LINK}" class="btn btn-danger">{$RESET_LOGO}</a>
                    <button class="btn btn-info" data-toggle="modal"
                        data-target="#uploadLogoModal">{$UPLOAD_NEW_IMAGE}</button>

                    <hr />

                    <p>{$FAVICON_IMAGE}</p>

                    <form action="" method="post" style="display:inline;">
                        <select name="favicon" class="image-picker show-html">
                            {foreach from=$FAVICON_IMAGES_ARRAY item=image}
                            <option data-img-src="{$image.src}" value="{$image.value}" {if $image.selected}
                                selected{/if}>{$image.n}</option>
                            {/foreach}
                        </select>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <input type="submit" class="btn btn-info" value="{$SUBMIT}">
                    </form>

                    <a href="{$RESET_FAVICON_LINK}" class="btn btn-danger">{$RESET_FAVICON}</a>
                    <button class="btn btn-info" data-toggle="modal"
                        data-target="#uploadFaviconModal">{$UPLOAD_NEW_IMAGE}</button>

                </div>
            </div>
        </div>

        {include file='footer.tpl'}

        <div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="uploadModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="uploadModalLabel">{$UPLOAD_NEW_IMAGE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                            onclick="location.reload();">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Upload modal -->
                        <form action="{$UPLOAD_PATH}" class="dropzone" id="uploadBackgroundDropzone">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="background">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" onclick="location.reload();"
                            data-dismiss="modal">{$CLOSE}</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="uploadBannerModal" tabindex="-1" role="dialog"
            aria-labelledby="uploadBannerModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="uploadBannerModalLabel">{$UPLOAD_NEW_IMAGE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                            onclick="location.reload();">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Upload modal -->
                        <form action="{$UPLOAD_PATH}" class="dropzone" id="uploadBannerDropzone">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="template_banner">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" onclick="location.reload();"
                            data-dismiss="modal">{$CLOSE}</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="uploadLogoModal" tabindex="-1" role="dialog" aria-labelledby="uploadLogoModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="uploadLogoModalLabel">{$UPLOAD_NEW_IMAGE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                            onclick="location.reload();">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Upload modal -->
                        <form action="{$UPLOAD_PATH}" class="dropzone" id="uploadLogoDropzone">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="logo">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" onclick="location.reload();"
                            data-dismiss="modal">{$CLOSE}</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="uploadFaviconModal" tabindex="-1" role="dialog"
            aria-labelledby="uploadFaviconModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="uploadFaviconModalLabel">{$UPLOAD_NEW_IMAGE}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                            onclick="location.reload();">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Upload modal -->
                        <form action="{$UPLOAD_PATH}" class="dropzone" id="uploadFaviconDropzone">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="hidden" name="type" value="favicon">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" onclick="location.reload();"
                            data-dismiss="modal">{$CLOSE}</button>
                    </div>
                </div>
            </div>
        </div>


        {include file='scripts.tpl'}

</body>

</html>