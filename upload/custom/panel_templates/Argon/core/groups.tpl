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
                    <h1 class="text-white">{$GROUPS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a class="btn btn-info" style="margin-bottom: 10px" href="{$NEW_GROUP_LINK}">{$NEW_GROUP}</a>
                    <a class="btn btn-info" style="margin-bottom: 10px" href="{$GROUP_SYNC_LINK}"><i
                            class="fas fa-external-link-alt"></i> {$GROUP_SYNC}</a>
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>{$ORDER}</th>
                                    <th>{$GROUP_ID}</th>
                                    <th>{$NAME}</th>
                                    <th>{$USERS}</th>
                                    <th>{$STAFF}</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody id="sortable">
                                {foreach from=$GROUP_LIST item=group}
                                <tr data-id="{$group.id}">
                                    <td>{$group.order}</td>
                                    <td>{$group.id}</td>
                                    <td><a href="{$group.edit_link}">{$group.name}</a></td>
                                    <td>{$group.users}</td>
                                    <td>{if $group.staff}
                                        <i class="fas fa-check-circle text-success"></i>
                                        {else}
                                        <i class="fas fa-times-circle text-danger"></i>
                                        {/if}
                                    </td>
                                    <td>
                                        <div class="float-md-right">
                                            <div class="btn btn-secondary btn-sm" type="button" data-toggle="tooltip" title="This doesn't work, if you have a fix, report it to https://github.com/samerton/Nameless-Argon" data-placement="left"><i class="fas fa-arrows-alt"></i>
                                            </div>
                                            <a href="{$group.edit_link}" class="btn btn-warning btn-sm"><i
                                                    class="fas fa-edit fa-fw"></i></a>
                                        </div>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>

        {include file='footer.tpl'}
    </div>

    {include file='scripts.tpl'}

<script type="text/javascript">
  $(document).ready(function () {
    $("#sortable").sortable({
      start: function (event, ui) {
        let start_pos = ui.item.index();
        ui.item.data('startPos', start_pos);
      },
      update: function (event, ui) {
        let groups = $("#sortable").children();
        let toSubmit = [];
        groups.each(function () {
          toSubmit.push($(this).data().id);
        });

        $.ajax({
          url: "{$REORDER_DRAG_URL}",
          type: "POST",
          data: {
            token: "{$TOKEN}",
            {literal}groups: JSON.stringify({"groups": toSubmit}){/literal}
          },
          success: function (response) {
            // Success
          },
          error: function (xhr) {
            // Error
            console.log(xhr);
          }
        });
      }
    });
  });
</script>

</body>

</html>