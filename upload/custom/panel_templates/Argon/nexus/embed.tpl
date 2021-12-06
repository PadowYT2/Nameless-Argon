	<!-- Embed Content -->
	<div class="card  mb-3">
		<h3 class="card-header  mb-3 text-center">{$EMBED_PAGE}</h3>
		<div class="card-body">

			<form action="" method="POST">
				<input type="hidden" name="sel_btn_session" value="embed">

				<div class="form-group">

					<label for="opal_embed_heading">{$EMBED_HEAD_LABEL}</label>
					<div class="input-group">
						<input type="text" class="form-control" id="opal_embed_heading" name="opal_embed_heading"
							value="{$OPAL_EMBED_HEADING}">

					</div>

				</div>

				<div class="form-group">

					<label for="opal_embed_description" style="margin-top:5px">{$EMBED_DESC_LABEL}</label>
					<div class="input-group">
						<textarea class="form-control" id="opal_embed_description"
							name="opal_embed_description">{$OPAL_EMBED_DESCRIPTION}</textarea>

					</div>

				</div>

				<div class="form-group">

					<label for="opal_embed_color" style="margin-top:5px">{$EMBED_COLOR_LABEL}</label>
					<div class="input-group">
						<input type="color" class="form-control" id="opal_embed_color" name="opal_embed_color"
							value="{$OPAL_EMBED_color}">
					</div>

				</div>

				<div class="form-group">

					<label for="opal_embed_image" style="margin-top:5px">{$EMBED_IMAGE_LABEL}</label> <span class="badge badge-info"
                                style="margin-right:10px" data-toggle="popover" data-title="{$INFO}"
                                data-content="{$EMBED_IMAGE_INFO_LABEL}" data-html="true"><i
                                    class="fas fa-question-circle"></i></span>
					<div class="input-group">
						<input type="text" class="form-control" id="opal_embed_image" name="opal_embed_image"
							value="{$OPAL_EMBED_IMAGE}">
					</div>

				</div>


				<div class="form-group">

					<label for="opal_embed_keywords" style="margin-top:5px">{$EMBED_KEYWORDS_LABEL} </label> <span class="badge badge-info"
                                style="margin-right:10px" data-toggle="popover" data-title="{$INFO}"
                                data-content="{$EMBED_KEYWORDS_INFO_LABEL}" data-html="true"><i
                                    class="fas fa-question-circle"></i></span>
					<div class="input-group">
						<input type="text" class="form-control" id="opal_embed_keywords" name="opal_embed_keywords"
							value="{$OPAL_EMBED_KEYWORDS}">
					</div>

				</div>

			<div class="form-group">
				<input type="hidden" name="token" value="{$TOKEN}">
				<button style="width: 100%;" type="submit" class="btn btn-info"><i class="fas fa-save"></i>
					{$SUBMIT}</button>
			</div>
			</form>

			<!-- Approach -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h3 class="m-0 font-weight-bold text-info">{$EMBED_PREVIEW_LABEL}</h3>
				</div>
				<div class="card-body">
					<div class="message">
						<div class="name-box">
							<img src="https://cdn.resourcemc.net/zAsa7/rIBOyeRU58.png/raw"
								style="width: 52px;height: 52px;border-radius: 3.14vh;" />
							<h2 class="name">Nexus Template</h2>
							<span class="bot-tag">BOT</span>
							<p class="date">27/09/2021</p>
						</div>
						<div class="content-box">
							<p class="content">This is a preview!</p>
							<div class="embed-box">
								<p class="title link" onclick="window.open('/')">
									{if isset($OPAL_EMBED_HEADING)}{$OPAL_EMBED_HEADING}{else}ExamplePvP{/if}</p>
								<p class="description">
									{if isset($OPAL_EMBED_HEADING)}{$OPAL_EMBED_DESCRIPTION}
									{else}We are an online platform to help users around the world connect through NamelessMC powered forums.{/if}
								</p>
								<img src="{if isset($OPAL_EMBED_IMAGE)}{$OPAL_EMBED_IMAGE}{else}https://i.imgur.com/e6YHD.gif{/if}"
									alt="Error: Failed to load image" class="thumbnail-picture" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<style>
		* {
			margin: 0;
			padding: 0;
		}



		.screen-size-error-container,
		.screen-size-error {
			display: none;
		}

		.link {
			color: #00b0f4;
			cursor: pointer;
			font-family: "Whitney";
		}

		.link:hover {
			text-decoration: underline;
		}

		.message {
			width: fit-content;
			height: fit-content;
		}

		.name-box {
			display: flex;
		}

		.profile-picture {
			width: 50px;
			height: 50px;
			border-radius: 50%;
		}

		.name {
			font-weight: normal;
			margin-top: 1px;
			margin-left: 1rem;
			font-size: 1.1rem;
			font-family: "Whitney";
		}

		.bot-tag {
			position: relative;
			background-color: #7289da;
			height: min-content;
			padding: 0.17rem;
			border-radius: 4px;
			font-size: 0.7rem;
			color: white;
			top: 4px;
			left: 4px;
		}

		.date {
			color: #2e3338;
			font-size: 0.8rem;
			margin-top: 6px;
			margin-left: 13px;
			font-weight: 500;
			font-family: "Whitney";
		}

		.content-box {
			position: relative;
			top: -25px;
			left: 66.5px;
		}


		.embed-box {
			background-color: ##f2f3f5;
			margin-top: -10px;
			width: 135%;
			height: 160px;
			border-left: 5px solid {if isset($OPAL_EMBED_HEADING)}{$OPAL_EMBED_COLOR}{else}#46d0e6{/if};
			border-radius: 4px;
		}

		.author {
			position: absolute;
			margin-top: 10px;
			margin-left: 6px;
			color: #2e3338;
		}

		.author-picture {
			width: 26px;
			height: 26px;
			border-radius: 50%;
		}

		.author-name {
			color: #2e3338;
			font-weight: normal;
			top: -26px;
			left: 35px;
			font-size: 1rem;
			position: relative;
			width: min-content;
			margin-right: 0;
		}

		.thumbnail-picture {
			width: 100px;
			height: 100px;
			border-radius: 5px;
			position: absolute;
			left: 380px;
			top: 75px;
		}

		.title {
			position: relative;
			font-weight: lighter;
			top: 14px;
			left: 10px;
		}

		.description {
			position: relative;
			top: 0px;
			left: 10px;
			color: #2e3338;
			font-size: 14px;
			font-weight: 500;
			max-width: 360px;
		}
	</style>