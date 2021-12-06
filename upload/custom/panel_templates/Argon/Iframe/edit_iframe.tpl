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
					<!-- Main content -->
					<section class="content">
						<h3 style="display:inline">{$EDIT_NAME}</h3>
						<div class="float-md-right">
							<a style="display:inline" href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
						</div>
						<hr />

						<!-- Success and Error Alerts -->
						{include file='includes/alerts.tpl'}

						<form action="" method="post">
							<div class="form-group">
								<label for="Name">{$NAME}</label>
								<input type="text" id="Name" name="name" class="form-control" value="{$EDIT_NAME}">
							</div>
							<label>{$DESCRIPTION}</label>
							{if !isset($MARKDOWN)}
							<div class="form-group">
								<textarea name="content" class="form-control" id="reply">{$CONTENT}</textarea>
							</div>
							{else}
							<div class="form-group">
								<textarea name="content" class="form-control" id="markdown">{$CONTENT}</textarea>
								<div class="meta">{$MARKDOWN_HELP}</div>
							</div>
							{/if}
							<label>{$FOOTER_DESCRIPTION}</label>
							{if !isset($MARKDOWN)}
							<div class="form-group">
								<textarea name="footer_content" class="form-control"
									id="footer_reply">{$FOOTER_CONTENT}</textarea>
							</div>
							{else}
							<div class="form-group">
								<textarea name="footer_content" class="form-control"
									id="markdown">{$FOOTER_CONTENT}</textarea>
								<div class="meta">{$MARKDOWN_HELP}</div>
							</div>
							{/if}
							<div class="form-group">
								<label for="Src">{$SRC}</label>
								<input type="text" id="Src" name="src" class="form-control" value="{$EDIT_SRC}">
							</div>
							<div class="form-group">
								<label for="Iframe_size">{$IFRAME_SIZE}</label>
								<select class="form-control mr-sm-2" id="Iframe_size" name="iframe_size">
									<option {if $SIZE===21} selected {/if} value="21by9">21:9 aspect ratio</option>
									<option {if $SIZE===16} selected {/if} value="16by9">16:9 aspect ratio</option>
									<option {if $SIZE===4} selected {/if} value="4by3">4:3 aspect ratio</option>
									<option {if $SIZE===1} selected {/if} value="1by1">1:1 aspect ratio</option>
								</select>
							</div>
							<div class="form-group">
								<input type="hidden" name="token" value="{$TOKEN}">
								<input type="submit" class="btn btn-info" value="{$SUBMIT}">
							</div>
						</form>
					</section>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>