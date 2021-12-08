<!-- Footer -->
<footer class="navbar navbar-horizontal navbar-expand-lg navbar-dark bg-secondary">
    <hr />
    <div class="container-fluid">
        <a class="navbar-brand" style="color: #9698af">&copy; NamelessMC {'Y'|date}</a>
        <a class="navbar-brand" style="color: #9698af" style="margin-right:10px">{$PAGE_LOAD_TIME}</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-secondary"
            aria-controls="navbar-secondary" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar-secondary">
            <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item">
                    {* We ask that you keep a link back to our website or Github somewhere on your website *}
                    <a href="https://github.com/NamelessMC/Nameless" class="nav-link nav-link-icon"
                        class="badge badge-secondary" data-toggle="popover" data-html="true" data-placement="top"
                        data-content="{$SOURCE}">
                        <i style="color: #9698af" class="fab fa-github fa-fw"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="https://namelessmc.com" class="nav-link nav-link-icon" class="badge badge-secondary"
                        data-toggle="popover" data-html="true" data-placement="top" data-content="{$SUPPORT}">
                        <i style="color: #9698af" class="fas fa-life-ring fa-fw"></i>
                    </a>
                </li>
            </ul>

        </div>
    </div>
</footer>