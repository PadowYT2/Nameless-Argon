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
          <h1 class="text-white">{$STATUSES}</h1>
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
              <h3 style="margin-top: 10px; margin-bottom: 7px;">{$CREATING_STATUS}</h3>
            </div>
            <div class="col-md-3">
              <span class="float-md-right"> <button class="btn btn-warning" onclick="showCancelModal()"
                  type="button">{$CANCEL}</button>
              </span>
            </div>
          </div>
          <hr />

          <!-- Success and Error Alerts -->
          {include file='includes/alerts.tpl'}

          <form action="" method="post">
            <div class="form-group">
              <label for="status_html">{$STATUS_HTML}</label>
              <input type="text" name="status_html" placeholder="{$STATUS_HTML}" id="status_html" class="form-control">
            </div>
            <div class="form-group">
              <label for="status_forms">{$STATUS_FORMS}</label>
              <select name="status_forms[]" id="status_forms" size="5" class="form-control" multiple
                style="overflow:auto;">
                {if count($ALL_FORMS)}
                {foreach from=$ALL_FORMS item=item}
                <option value="{$item.id}" {if $item.selected} selected{/if}>{$item.name}</option>
                {/foreach}
                {/if}
              </select>
            </div>
            <div class="form-group">
              <label for="status_groups">{$STATUS_GROUPS}</label>
              <select name="status_groups[]" id="status_groups" size="5" class="form-control" multiple
                style="overflow:auto;">
                {if count($ALL_GROUPS)}
                {foreach from=$ALL_GROUPS item=item}
                <option value="{$item.id}" {if $item.selected} selected{/if}>{$item.name}</option>
                {/foreach}
                {/if}
              </select>
            </div>
            <div class="form-group">
              <label for="inputOpen">{$MARKED_AS_OPEN}</label>
              <input id="inputOpen" name="open" type="checkbox" class="js-switch" />
            </div>
            <div class="form-group">
              <input type="hidden" name="token" value="{$TOKEN}">
              <input type="submit" class="btn btn-info" value="{$SUBMIT}">
            </div>
          </form>

          <center>
            <p>Forms Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p>
          </center>
        </div>
      </div>
    </div>

    {include file='footer.tpl'}


    <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            {$CONFIRM_CANCEL}
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
            <a href="{$CANCEL_LINK}" class="btn btn-warning">{$YES}</a>
          </div>
        </div>
      </div>
    </div>

    {include file='scripts.tpl'}
    <script type="text/javascript">
      function showCancelModal() {
        $('#cancelModal').modal().show();
      }
    </script>

</body>

</html>