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
          <h1 class="text-white">{$TITLE}</h1>
        </div>
      </div>
    </div>

    <div class="container-fluid mt--8">
      <!-- Update Notification -->
      {include file='includes/update.tpl'}

      <div class="card">
        <div class="card-body">
          <div class="float-md-right">
            <a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
          </div>
          </br>
          <hr>
          <!-- Success and Error Alerts -->
          {include file='includes/alerts.tpl'}


          <section class="content">
            <h3 class="text-center">{$GALLERY_SETTINGS}</h3>
            <form action="" method="post">
              <div class="form-group">
                <label>{$GALLERY_ICON}</label>
                <input type="text" name="gal_icon" class="form-control" value="{$ICON}">
              </div>
              <div class="form-group">
                <label>{$GALLERY_LOCATION}</label>
                <select class="form-control mr-sm-2" name="gal_location">
                  <option {if $LINK_LOCATION===1} selected {/if} value="1">TOP</option>
                  <option {if $LINK_LOCATION===2} selected {/if} value="2">FOOTER</option>
                  <option {if $LINK_LOCATION===3} selected {/if} value="3">More Dropdown</option>
                  <option {if $LINK_LOCATION===4} selected {/if} value="4">NO LOCATION</option>
                </select>
              </div>
              <div class="form-group">
                <label>{$OPTIMIZATION}</label>
                <button type="button" class="btn btn-light btn-sm" data-toggle="tooltip" data-placement="top"
                  title="{$OPTIMIZATION_HELP}">
                  <i class="fa fa-question-circle" aria-hidden="true"></i>
                </button>
                <select class="form-control mr-sm-2" name="gal_img_small">
                  <option {if $IMG_SMALL===0} selected {/if} value="0">{$DISABLED}</option>
                  <option {if $IMG_SMALL===1} selected {/if} value="1">{$ENABLED}</option>
                </select>
              </div>
              <div class="form-group">
                <label>{$GALLERY_PAGINATION}</label>
                <input type="text" name="gal_pagination" class="form-control" value="{$PAGINATION}">
              </div>
              <div class="form-group">
                <label>{$SORT}</label>
                <select class="form-control mr-sm-2" name="gal_sort">
                  <option {if $SORT_VAR===1} selected {/if} value="1">{$DESC}</option>
                  <option {if $SORT_VAR===2} selected {/if} value="2">{$ASC}</option>
                </select>
              </div>
              <div class="form-group">
                <label>{$HOVER_ANIMATION}</label>
                <select class="form-control mr-sm-2" name="gal_hover">
                  <option {if $HOVER_VAR===0} selected {/if} value="0">{$DISABLED}</option>
                  <option {if $HOVER_VAR===1} selected {/if} value="1">{$ZOOM}</option>
                  <option {if $HOVER_VAR===2} selected {/if} value="2">{$ROTATE_Z}</option>
                  <option {if $HOVER_VAR===3} selected {/if} value="3">{$ROTATE_X}</option>
                  <option {if $HOVER_VAR===4} selected {/if} value="4">{$ROTATE_Y}</option>
                </select>
              </div>
              <div class="form-group">
                <label>{$GALLERY_ORDER}</label>
                <input type="text" name="gal_order" class="form-control" value="{$ORDER}">
              </div>
              <div class="form-group">
                <label>Allow Guest?</label>
                <select type="text" name="gal_guest_perm" class="form-control">
                  <option value="1" {if $GUEST_PERMS==1} selecterd {/if}>True</option>
                  <option value="0" {if $GUEST_PERMS !=1} selecterd {/if}>False</option>
                </select>
              </div>
              <div class="form-group">
                <input type="hidden" name="token" value="{$TOKEN}">
                <input type="submit" class="btn btn-info" value="{$SAVE}">
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>

    {include file='footer.tpl'}

    {include file='scripts.tpl'}

</body>

</html>