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
                    <h1 class="text-white">{$FORUMS}</h1>
                </div>
            </div>
        </div>

        <div class="container-fluid mt--8">
            <!-- Update Notification -->
            {include file='includes/update.tpl'}

            <div class="card">
                <div class="card-body">
                    <a href="{$NEW_FORUM_LINK}" class="btn btn-info" {if count($FORUMS_ARRAY)}
                        style="margin-bottom: 15px;" {/if}>{$NEW_FORUM}</a>
                    {if !count($FORUMS_ARRAY)}
                    <hr />
                    {/if}

                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if count($FORUMS_ARRAY)}
                    <div class="table-responsive">
                        <table class="table">
                            <tbody id="sortable">
                                {foreach from=$FORUMS_ARRAY item=item name=forum_array}
                                <tr data-id="{$item.id}">
                                    <td{if $item.parent_forum} style="padding-left:{math equation=" x * y" x=25
                                        y=$item.parent_forum_count}px" {/if}>
                                        <a href="{$item.edit_link}">{$item.title}</a>{if $item.parent_forum}
                                        <small>| {$item.parent_forum}</small>{/if}<br />{$item.description}
                                        </td>
                                        <td>
                                            <div class="float-md-right">
                                                {if $item.up_link}
                                                <form action="{$item.up_link}" method="post" style="display: inline">
                                                    <input type="hidden" name="token" value="{$TOKEN}" />
                                                    <button class="btn btn-success btn-sm"><i
                                                            class="fas fa-chevron-up"></i></button>
                                                </form>
                                                {/if}
                                                {if $item.down_link}
                                                <form action="{$item.down_link}" method="post" style="display: inline">
                                                    <input type="hidden" name="token" value="{$TOKEN}" />
                                                    <button class="btn btn-warning btn-sm"><i
                                                            class="fas fa-chevron-down"></i></button>
                                                </form>
                                                {/if}
                                                <a href="{$item.delete_link}" class="btn btn-danger btn-sm"><i
                                                        class="fas fa-trash"></i></a>
                                            </div>
                                        </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    <p>{$NO_FORUMS}</p>
                    {/if}

                </div>
            </div>

        </div>

        {include file='footer.tpl'}

        {include file='scripts.tpl'}

<script type="text/javascript">
  $(document).ready(function () {
    $("#sortable").sortable({
      start: function (event, ui) {
        let start_pos = ui.item.index();
        ui.item.data('startPos', start_pos);
      },
      update: function (event, ui) {
        let forums = $("#sortable").children();
        let toSubmit = [];
        forums.each(function () {
          toSubmit.push($(this).data().id);
        });

        $.ajax({
          url: "{$REORDER_DRAG_URL}",
          type: "GET",
          data: {
            action: "order",
            dir: "drag",
              {literal}forums: JSON.stringify({"forums": toSubmit}){/literal}
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