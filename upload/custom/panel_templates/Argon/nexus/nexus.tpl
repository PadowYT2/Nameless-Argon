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
					<!-- Success and Error Alerts -->
					{include file='includes/alerts.tpl'}

					<hr>

					<!-- Page Content  -->
					<div class="row">
						<div class="col-sm-3">
							{include file='nexus/sittings-menu.tpl'}
						</div>

						<div class="col-sm-9">

							<div class="tab-content" id="v-pills-tabContent">


								<div class="tab-pane fade {if !isset($TPL_NAME_SESSION) or $TPL_NAME_SESSION == 'options'}show active{/if}"
									id="v-pills-options" role="tabpanel" aria-labelledby="v-pills-options-tab">
									{include file="nexus/options.tpl"}
								</div>


								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'colors'}show active{/if}"
									id="v-pills-colors" role="tabpanel" aria-labelledby="v-pills-colors-tab">
									{include file="nexus/colors.tpl"}
								</div>

								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'navbar'}show active{/if}"
									id="v-pills-navbar" role="tabpanel" aria-labelledby="v-pills-navbar-tab">
									{include file="nexus/navbar.tpl"}
								</div>

								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'advanced'}show active{/if}"
									id="v-pills-advanced" role="tabpanel" aria-labelledby="v-pills-advanced-tab">
									{include file="nexus/advanced.tpl"}
								</div>

								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'arc'}show active{/if}"
									id="v-pills-arc" role="tabpanel" aria-labelledby="v-pills-arc-tab">
									{include file="nexus/arc.tpl"}
								</div>

								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'widgets'}show active{/if}"
									id="v-pills-widgets" role="tabpanel" aria-labelledby="v-pills-widgets-tab">
									{include file="nexus/widgets.tpl"}
								</div>


								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'embed'}show active{/if}"
									id="v-pills-embed" role="tabpanel" aria-labelledby="v-pills-embed-tab">
									{include file="nexus/embed.tpl"}
								</div>


								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'connections'}show active{/if}"
									id="v-pills-connections" role="tabpanel" aria-labelledby="v-pills-connections-tab">
									{include file="nexus/connections.tpl"}
								</div>


								<div class="tab-pane fade {if $TPL_NAME_SESSION == 'update'}show active{/if}"
									id="v-pills-update" role="tabpanel" aria-labelledby="v-pills-update-tab">
									{include file="nexus/update.tpl"}
								</div>

							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		{include file='footer.tpl'}


		{include file='scripts.tpl'}


</body>

</html>