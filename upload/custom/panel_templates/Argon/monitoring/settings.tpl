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
					<h1 class="text-white">{$SETTINGS_HEAD}</h1>
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

					<section class="content">


						<ul class="nav nav-pills nav-justified mb-3" id="pills-tab" role="tablist">

							<li class="nav-item">
								<a class="nav-link {if !isset($ACTIVE_PILL)}active{/if}" id="pills-home-tab"
									data-toggle="pill" href="#pills-links" role="tab" aria-controls="pills-home"
									aria-selected="true">Links</a>
							</li>

							<li class="nav-item">
								<a class="nav-link {if $ACTIVE_PILL == 'settings'}active{/if}" id="pills-settings-tab"
									data-toggle="pill" href="#pills-settings" role="tab" aria-controls="pills-settings"
									aria-selected="false">Settings</a>
							</li>

							<li class="nav-item">
								<a class="nav-link {if $ACTIVE_PILL == 'cron'}active{/if}" id="pills-cron-tab"
									data-toggle="pill" href="#pills-cron" role="tab" aria-controls="pills-cron"
									aria-selected="false">CronTab</a>
							</li>

							<li class="nav-item">
								<a class="nav-link {if $ACTIVE_PILL == 'statistics'}active{/if}"
									id="pills-statistics-tab" data-toggle="pill" href="#pills-statistics" role="tab"
									aria-controls="pills-statistics" aria-selected="false">Statistics</a>
							</li>
						</ul>




						<div class="tab-content" id="pills-tabContent">



							<div class="tab-pane fade {if !isset($ACTIVE_PILL)}show active{/if}" id="pills-links"
								role="tabpanel" aria-labelledby="pills-links-tab">

								<form action="" method="POST">

									<label style="margin-top: 10px;"
										for="redirection_home">{$REDIRECTION_HOME_LABEL}</label>
									<div class="input-group">
										<select class="form-control mr-sm-2" name="redirection_home">
											<option {if $REDIRECTION_HOME=='0' }selected {/if}value="0">False</option>
											<option {if $REDIRECTION_HOME=='1' }selected {/if}value="1">True</option>
										</select>
									</div>

									<h4 style="margin-top: 10px;" for="link_title">{$LINK_TITLE_LABEL}</h4>
									<div class="input-group">
										<input type="text" class="form-control" id="link_title" name="link_title"
											placeholder="Servers" value="{$LINK_TITLE}">
									</div>

									<div class="form-row">

										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;" for="link_icon">{$LINK_ICON_LABEL}</label>
											<input type="text" class="form-control" id="link_icon" name="link_icon"
												placeholder="font awesome icon" value="{$LINK_ICON}">
										</div>

										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="link_location">{$LINK_LOCATION_LABEL}</label>
											<select class="form-control mr-sm-2" name="link_location">
												<option {if $LINK_LOCATION=='1' }selected {/if}value="1">Navbar</option>
												<option {if $LINK_LOCATION=='2' }selected {/if}value="2">Footer</option>
												<option {if $LINK_LOCATION=='3' }selected {/if}value="3">Dropdown
												</option>
												<option {if $LINK_LOCATION=='4' }selected {/if}value="4">No Link
												</option>
											</select>
										</div>


										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="link_order">{$LINK_ORDER_LABEL}</label>
											<input type="number" class="form-control" id="link_order" name="link_order"
												placeholder="1" value="{$LINK_ORDER}">
										</div>

									</div>


									<h4 style="margin-top: 10px;" for="add_server_link_title">{$ADD_LINK_TITLE_LABEL}
									</h4>
									<div class="input-group">
										<input type="text" class="form-control" id="add_server_link_title"
											name="add_server_link_title" placeholder="Add Servers"
											value="{$ADD_SERVER_LINK_TITLE}">
									</div>


									<div class="form-row">

										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="add_server_link_icon">{$ADD_LINK_ICON_LABEL}</label>
											<input type="text" class="form-control" id="add_server_link_icon"
												name="add_server_link_icon" placeholder="font awesome icon"
												value="{$ADD_SERVER_LINK_ICON}">
										</div>

										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="add_server_link_location">{$ADD_LINK_LOCATION_LABEL}</label>
											<select class="form-control mr-sm-2" name="add_server_link_location">
												<option {if $ADD_SERVER_LINK_LOCATION=='1' }selected {/if}value="1">
													Navbar</option>
												<option {if $ADD_SERVER_LINK_LOCATION=='2' }selected {/if}value="2">
													Footer</option>
												<option {if $ADD_SERVER_LINK_LOCATION=='3' }selected {/if}value="3">
													Dropdown</option>
												<option {if $ADD_SERVER_LINK_LOCATION=='4' }selected {/if}value="4">No
													Link</option>
											</select>
										</div>

										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="add_server_link_order">{$ADD_LINK_ORDER_LABEL}</label>
											<input type="number" class="form-control" id="add_server_link_order"
												name="add_server_link_order" placeholder="1"
												value="{$ADD_SERVER_LINK_ORDER}">
										</div>

									</div>


									<div class="input-group" style="margin-top: 50px; padding-block-end: 50px;">
										<input type="hidden" name="token" value="{$TOKEN}">
										<button style="width: 100%;" type="submit" class="btn btn-info"><i
												class="fas fa-save"></i></button>
									</div>

								</form>

							</div>






							<div class="tab-pane fade {if $ACTIVE_PILL == 'settings'}show active{/if}"
								id="pills-settings" role="tabpanel" aria-labelledby="pills-settings-tab">

								<form action="" method="POST">

									<input type="hidden" name="active_pill" value="settings">


									<div class="form-row">

										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;" for="server_validation">Enable check
												MOTD?</label>
											<select class="form-control mr-sm-2" name="server_validation">
												<option {if $SERVER_VALIDATION=='0' }selected {/if}value="0">False
												</option>
												<option {if $SERVER_VALIDATION=='1' }selected {/if}value="1">True
												</option>
											</select>
										</div>

										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;"
												for="display_sponsors_servers">{$DISPLAY_SPONSORS_SERVERS_LABEL}</label>
											<select class="form-control mr-sm-2" name="display_sponsors_servers">
												<option {if $DISPLAY_SPONSORS_SERVERS=='0' }selected {/if}value="0">
													False</option>
												<option {if $DISPLAY_SPONSORS_SERVERS=='1' }selected {/if}value="1">True
												</option>
											</select>
										</div>


										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;"
												for="mc_servers_sponsors_label_color">{$MC_SERVERS_SPONSORS_COLOR}</label>
											<input type="color" class="form-control"
												name="mc_servers_sponsors_label_color"
												value="{$MC_SERVERS_SPONSORS_LABEL_COLOR}">
										</div>


										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;"
												for="mc_servers_label_color">{$MC_SERVERS_COLOR}</label>
											<input type="color" class="form-control" name="mc_servers_label_color"
												value="{$MC_SERVERS_LABEL_COLOR}">
										</div>

									</div>

									<div class="form-row">


										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="display_currency">{$DISPLAY_CURRENCY_LABEL}</label>
											<input type="text" class="form-control" id="display_currency"
												name="display_currency" placeholder="USD" value="{$DISPLAY_CURRENCY}">
										</div>


										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="page_limit">{$PAGE_LIMIT_LABEL}</label>
											<input type="number" class="form-control" id="page_limit" name="page_limit"
												placeholder="30" value="{$PAGE_LIMIT}">
										</div>


										<div class="col-md-4 mb-3">
											<label style="margin-top: 10px;"
												for="monitoring_editor">{$MONITORING_EDITOR_LABEL}</label>
											<select class="form-control mr-sm-2" name="monitoring_editor">
												<option {if $MONITORING_EDITOR=='0' }selected {/if}value="0">Markdown
												</option>
												<option {if $MONITORING_EDITOR=='1' }selected {/if}value="1">CKeditor
												</option>
											</select>
										</div>

									</div>


									<div class="input-group" style="margin-top: 50px; padding-block-end: 50px;">
										<input type="hidden" name="token" value="{$TOKEN}">
										<button style="width: 100%;" type="submit" class="btn btn-info"><i
												class="fas fa-save"></i></button>
									</div>

								</form>
							</div>



							<div class="tab-pane fade {if $ACTIVE_PILL == 'cron'}show active{/if}" id="pills-cron"
								role="tabpanel" aria-labelledby="pills-cron-tab">


								<form action="" method="POST">

									<input type="hidden" name="active_pill" value="cron">

									<label style="margin-top: 10px;"
										for="ping_status">{$PING_STATUS_LABEL}<br><span>{$PING_STATUS_DESC}</span><br>
										<a href="https://resources.lectrichost.com/resources/resource/35-jobsmanager/"
											target="_blank">{$CRON_JOBS}</a>
										<p>1(every 5 min): <span style="color: red;">{$PING_URL}</span></p>
										<p>2(each hour): <span style="color: red;">{$PING_STATS_URL}</span> or (every 5
											min): <span style="color: red;">{$PING_STATS_PHP_URL}</span></p>

									</label>
									<div class="input-group">
										<select class="form-control mr-sm-2" name="ping_status">
											<option {if $PING_STATUS=='0' }selected {/if}value="0">False</option>
											<option {if $PING_STATUS=='1' }selected {/if}value="1">True</option>
										</select>
									</div>


									<div class="input-group" style="margin-top: 50px; padding-block-end: 50px;">
										<input type="hidden" name="token" value="{$TOKEN}">
										<button style="width: 100%;" type="submit" class="btn btn-info"><i
												class="fas fa-save"></i></button>
									</div>

								</form>
							</div>




							<div class="tab-pane fade {if $ACTIVE_PILL == 'statistics'}show active{/if}"
								id="pills-statistics" role="tabpanel" aria-labelledby="pills-statistics-tab">

								<form action="" method="POST">

									<input type="hidden" name="active_pill" value="statistics">

									<div class="form-row">

										<div class="col-md-6 mb-3">
											<label style="margin-top: 10px;"
												for="stats_date_format">{$STATS_DATE_FORMAT_LABEL}</label>
											<input type="text" class="form-control" id="stats_date_format"
												name="stats_date_format" placeholder="H:i d.m.Y"
												value="{$STATS_DATE_FORMAT}">
										</div>

										<div class="col-md-6 mb-3">
											<label style="margin-top: 10px;"
												for="stats_horisontal_segments">{$STATS_HORISONTAL_SEGMENTS_LABEL}</label>
											<select class="form-control mr-sm-2" name="stats_horisontal_segments">
												<option {if $STATS_HORISONTAL_SEGMENTS=='2' }selected {/if}value="2">
													False</option>
												<option {if $STATS_HORISONTAL_SEGMENTS=='1' }selected {/if}value="1">
													True</option>
											</select>
										</div>

									</div>

									<div class="input-group" style="margin-top: 50px; padding-block-end: 50px;">
										<input type="hidden" name="token" value="{$TOKEN}">
										<button style="width: 100%;" type="submit" class="btn btn-info"><i
												class="fas fa-save"></i></button>
									</div>

								</form>

								<form action="" method="POST">

									<input type="hidden" name="active_pill" value="statistics">

									<div class="form-row">

										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;"
												for="stats_line_color">{$STATS_LINE_COLOR_LABEL}</label>
											<input type="color" class="form-control" id="stats_line_color"
												name="stats_line_color" value="{$STATS_LINE_COLOR}">
										</div>

										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;"
												for="stats_point_color">{$STATS_POINT_COLOR_LABEL}</label>
											<input type="color" class="form-control" id="stats_point_color"
												name="stats_point_color" value="{$STATS_POINT_COLOR}">
										</div>

										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;"
												for="stats_info_bg_color">{$STATS_INFO_BG_COLOR_LABEL}</label>
											<input type="color" class="form-control" id="stats_info_bg_color"
												name="stats_info_bg_color" value="{$STATS_INFO_BG_COLOR}">
										</div>

										<div class="col-md-3 mb-3">
											<label style="margin-top: 10px;"
												for="stats_info_text_color">{$STATS_INFO_TEXT_COLOR_LABEL}</label>
											<input type="color" class="form-control" id="stats_info_text_color"
												name="stats_info_text_color" value="{$STATS_INFO_TEXT_COLOR}">
										</div>


									</div>


									<div class="input-group" style="margin-top: 50px; padding-block-end: 50px;">
										<input type="hidden" name="token" value="{$TOKEN}">
										<button style="width: 100%;" type="submit" class="btn btn-info"><i
												class="fas fa-save"></i></button>
									</div>

								</form>

								<form action="" method="POST">

									<div class="input-group" style="margin-top: 50px; padding-block-end: 50px;">
										<input type="hidden" name="stats_info_text_color" value="#222222">
										<input type="hidden" name="stats_info_bg_color"
											value="rgba(255, 255, 255, .75)">
										<input type="hidden" name="stats_point_color" value="#18bc9b">
										<input type="hidden" name="stats_line_color" value="#1E90FF">
										<input type="hidden" name="stats_horisontal_segments" value="1">
										<input type="hidden" name="stats_date_format" value="H:i d.m.Y">

										<input type="hidden" name="token" value="{$TOKEN}">
										<button type="submit" class="btn btn-info">SET
											DEFAULT</button>
									</div>
								</form>

							</div>



						</div>


					</section>


				</div>
			</div>
		</div>

		{include file='footer.tpl'}

		{include file='scripts.tpl'}

</body>

</html>