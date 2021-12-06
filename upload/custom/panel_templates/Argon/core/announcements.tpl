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
                    <h1 class="text-white">{$ANNOUNCEMENTS}</h1>
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
                            <p style="margin-top: 7px; margin-bottom: 7px;">{$ANNOUCEMENTS_INFO}</p>
                        </div>
                        <div class="col-md-3">
                            <span class="float-md-right"><a href="{$NEW_LINK}" class="btn btn-info"><i
                                        class="fas fa-plus-circle"></i> {$NEW}</a></span>
                        </div>
                    </div>
                    {if isset($ALL_ANNOUNCEMENTS)}
                    <hr />{else}<br />{/if}
                    <!-- Success and Error Alerts -->
                    {include file='includes/alerts.tpl'}

                    {if isset($ALL_ANNOUNCEMENTS)}
                    <div class="table-responsive">
                        <table class="table table-borderless table-striped">
                            <thead>
                                <tr>
                                    <th>{$ORDER}</th>
                                    <th>{$HEADER}</th>
                                    <th>{$PAGES}</th>
                                    <th>{$TEXT_COLOUR}</th>
                                    <th>{$BACKGROUND_COLOUR}</th>
                                    <th>{$ACTIONS}</th>
                                </tr>
                            </thead>
                            <tbody id="sortable">
                                {foreach from=$ALL_ANNOUNCEMENTS item=announcement}
                                <tr data-id="{$announcement[0]->id}">
                                    <td>{$announcement[0]->order}</td>
                                    <td>{$announcement[0]->header}</td>
                                    <td>{if $announcement['pages'] !=
                                        null}{$announcement['pages']}{else}<i>{$NONE}</i>{/if}</td>
                                    <td><span class="badge border"
                                            style="display: inline-block; width: 50px; height: 25px; background-color: {$announcement[0]->text_colour};"
                                            title="{$announcement[0]->text_colour}"></span></td>
                                    <td><span class="badge border"
                                            style="display: inline-block; width: 50px; height: 25px; background-color: {$announcement[0]->background_colour}; color:#ffffff;"
                                            title="{$announcement[0]->background_colour}"></span></td>
                                    <td>
                                        <a href="{$EDIT_LINK}{$announcement[0]->id}" class="btn btn-warning btn-sm"><i
                                                class="fa fa-fw fa-edit"></i></a>
                                        <a href="#" onclick="showDeleteModal({$announcement[0]->id})"
                                            class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i></a>
                                    </td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    {else}
                    {$NO_ANNOUNCEMENTS}
                    {/if}
                </div>
            </div>
    </div>

    {include file='footer.tpl'}


    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">{$ARE_YOU_SURE}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {$CONFIRM_DELETE_ANNOUNCEMENT}
                </div>
                <div class="modal-footer">
                    <input type="hidden" id="deleteId" value="">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{$NO}</button>
                    <button type="button" onclick="deleteAnnouncement()" class="btn btn-info">{$YES}</button>
                </div>
            </div>
        </div>
    </div>


    {include file='scripts.tpl'}
    <script type="text/javascript">
        function showDeleteModal(id) {
            $('#deleteId').attr('value', id);
            $('#deleteModal').modal().show();
        }

        function deleteAnnouncement() {
          const id = $('#deleteId').attr('value');
          if (id) {
            const response = $.post("{$DELETE_LINK}", { id, action: 'delete', token: "{$TOKEN}" });
            response.done(function() { window.location.reload(); });
          }
        }

          $(document).ready(function () {
            $("#sortable").sortable({
                start: function (event, ui) {
                    let start_pos = ui.item.index();
                    ui.item.data('startPos', start_pos);
                },
                update: function (event, ui) {
                    let announcements = $("#sortable").children();
                    let toSubmit = [];
                    announcements.each(function () {
                        toSubmit.push($(this).data().id);
                    });

                    $.ajax({
                    url: "{$REORDER_DRAG_URL}",
                    type: "GET",
                    data: {
                        action: "order",
                        {literal}announcements: JSON.stringify({"announcements": toSubmit}){/literal}
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