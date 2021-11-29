{if isset($SUCCESS)}
<div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
    <h5 class="h3 mb-0" style="color: white;"><i class="icon fa fa-check"></i> {$SUCCESS_TITLE}
    </h5>
    {$SUCCESS}
</div>
{/if}

{if isset($ERRORS) && count($ERRORS)}
<div class="alert alert-danger alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
    <h5 class="h3 mb-0" style="color: white;"><i class="icon fas fa-exclamation-triangle"></i>
        {$ERRORS_TITLE}</h5>
    <ul>
        {foreach from=$ERRORS item=error}
        <li>{$error}</li>
        {/foreach}
    </ul>
</div>
{/if}