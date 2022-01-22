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
					<h1 class="text-white">{$UPDATE_HEAD}</h1>
				</div>
			</div>
		</div>

		<div class="container-fluid mt--8">
			<!-- Update Notification -->
			{include file='includes/update.tpl'}

			<div class="card">
				<div class="card-body" style="height: 70vh;">
					<iframe src="https://updates.mubeen.eu/monitoring/{$MODULE_VERSION}"
						style="height: 100%; width: 100%; border: 2px solid transparent; margin-top: 20px;"> </iframe>
				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}
</body>

</html>