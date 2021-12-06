{include file='header.tpl'}

<body>

    <body class="bg-default">
        <!-- Main content -->
        <div class="main-content">
            <!-- Header -->
            <div class="header bg-gradient-info py-lg-9">
                <div class="separator separator-bottom separator-skew zindex-100">
                    <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1"
                        xmlns="http://www.w3.org/2000/svg">
                        <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
                    </svg>
                </div>
            </div>
            <!-- Page content -->
            <div class="container mt--8 pb-5">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-7">
                        <div class="card bg-secondary border-0 mb-0">
                            <div class="card-body px-lg-5 py-lg-5">
                                <div class="text-center text-muted mb-4">
                                    <h3>{$PLEASE_REAUTHENTICATE}</h3>
                                </div>
                                {if isset($ERROR)}
                                <div class="alert alert-danger">
                                    {$ERROR}
                                </div>
                                {/if}
                                <form action="" method="post">
                                    {if isset($EMAIL)}
                                    <div class="form-group mb-3 has-feedback">
                                        <div class="input-group input-group-merge input-group-alternative">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="far fa-envelope"></i></span>
                                            </div>
                                            <input type="email" name="email" id="email" autocomplete="off"
                                                class="form-control" placeholder="{$EMAIL}" type="email">
                                        </div>
                                    </div>
                                    {else}
                                    <div class="form-group has-feedback">
                                        <div class="input-group input-group-merge input-group-alternative">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                            </div>
                                            <input type="text" name="username" id="username" autocomplete="off"
                                                class="form-control" placeholder="{$USERNAME}" type="password">
                                        </div>
                                    </div>
                                    {/if}
                                    <div class="form-group has-feedback">
                                        <div class="input-group input-group-merge input-group-alternative">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-signature"></i>
                                                </span>
                                            </div>
                                            <input type="password" name="password" id="password" class="form-control"
                                                placeholder="{$PASSWORD}">
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <input type="hidden" name="token" value="{$TOKEN}">
                                        <button type="submit" class="btn btn-info my-4">{$SUBMIT}</button>
                                        <a href="{$SITE_HOME}" class="btn btn-warning my-4">{$CANCEL}</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {include file='scripts.tpl'}

    </body>

    </html>