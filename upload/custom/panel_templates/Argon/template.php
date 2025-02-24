<?php
/*
 *	Made by Samerton
 *  https://github.com/NamelessMC/Nameless/
 *  NamelessMC version 2.0.0-pr12
 *
 *  License: MIT
 *
 *  Argon Panel Template
 */

// Always have the following if statement around your class
if(!class_exists('Argon_Panel_Template')){
	class Argon_Panel_Template extends TemplateBase {
		// Private variable to store language + user
		private $_language, $_user, $_pages;

		// Constructor - set template name, version, Nameless version and author here
		public function __construct($cache, $smarty, $language, $user, $pages){
			$this->_language = $language;
			$this->_user = $user;
			$this->_pages = $pages;

			parent::__construct(
				'Argon',  // Template name
				'1.1.0',  // Template version
				'2.0.0-pr12',  // Nameless version template is made for
				'<a href="https://github.com/samerton" target="_blank">Samerton</a> & <a href="https://padow.ru" target="_blank">PadowYT2</a>'  // Author, you can use HTML here
			);

			$this->addCSSFiles(array(
				'https://use.fontawesome.com/releases/v5.4.1/css/all.css' => array('integrity' => 'sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz', 'crossorigin' => 'anonymous'),
				'https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Argon/assets/css/argon.min.css' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Argon/assets/css/custom.css' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/switchery/switchery.min.css' => array()
			));

			$this->addJSFiles(array(
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Argon/assets/plugins/jquery/jquery.min.js' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/js/jquery.cookie.js' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Argon/assets/js/core/popper.min.js' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Argon/assets/js/core/bootstrap.min.js' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Argon/assets/js/argon.min.js' => array(),
				(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/switchery/switchery.min.js' => array()
			));

			$this->addJSScript('
			// Dark and light theme switch
			var currentPanelTheme = localStorage.getItem("nmc_panel_theme");

			if (currentPanelTheme == null) {
				localStorage.setItem("nmc_panel_theme", "light");
			} else {
				if (currentPanelTheme == "dark") {
					$("html").addClass("dark");
					if ($("#dark_mode").length) {
						$("#dark_mode").prop("checked", false);
					}
				}
			}

			// Prevents light flicker on dark mode
			$("body").addClass("visible");

			if ($(".dark-switch").length) {
				var changeCheckbox = document.querySelector(".dark-switch");
				changeCheckbox.onchange = function() {
					if (currentPanelTheme == "dark") {
						localStorage.setItem("nmc_panel_theme", "light");
					};
					if (currentPanelTheme == "light") {
						localStorage.setItem("nmc_panel_theme", "dark");
					};
					location.reload();
					return false;
				};

				var elems = Array.prototype.slice.call(document.querySelectorAll(\'.dark-switch\'));
				elems.forEach(function(html) {
					var switchery = new Switchery(html, {color: \'rgb(226 226 229)\', secondaryColor: \'#333333\'});
				});
			}
			');

			$this->addJSScript('
				$(document).ready(function(){
					$(\'[data-toggle="tooltip"]\').tooltip();
				});
				$(document).ready(function(){
					$(\'[data-toggle="popover"]\').popover({trigger:\'manual\',html:true}).on("mouseenter", function() {
					  var _this = this;
					  $(this).popover("show");
					  $(".popover").on("mouseleave", function() {
					    $(_this).popover(\'hide\');
					  });
					}).on("mouseleave", function() {
					  var _this = this;
					  setTimeout(function() {
					    if (!$(".popover:hover").length) {
					      $(_this).popover("hide")
					    }
					  }, 100);
					});
				});
			');
		}

        public function onPageLoad() {
            if (defined('PANEL_PAGE')) {
                switch (PANEL_PAGE) {
                    case 'dashboard':
                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/moment/moment.min.js' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/charts/Chart.min.js' => []
                        ]);
                        $this->addJSScript('
						$(".stats-card i").addClass("fa-2x text-gray-300");
						');
                        break;

                    case 'api':
                        $this->addCSSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/toastr/toastr.min.css' => []
                        ]);

                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/toastr/toastr.min.js' => []
                        ]);

                        $this->addJSScript('
						var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
						elems.forEach(function(html) {
						  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
						});
						');

                        break;

                    case 'avatars':
                        $this->addCSSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/dropzone/dropzone.min.css' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/image-picker/image-picker.css' => []
                        ]);

                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/dropzone/dropzone.min.js' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/image-picker/image-picker.min.js' => []
                        ]);

                        $this->addJSScript('
						var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
						elems.forEach(function(html) {
						  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
						});
						// Dropzone options
						Dropzone.options.upload_avatar_dropzone = {
						    maxFilesize: 2,
						    dictDefaultMessage: "' . $this->_language->get('admin', 'drag_files_here') . '",
						    dictInvalidFileType: "' . $this->_language->get('admin', 'invalid_file_type') . '",
						    dictFileTooBig: "' . $this->_language->get('admin', 'file_too_big') . '"
						};
						$(".image-picker").imagepicker();
						');

                        break;

                    case 'custom_profile_fields':
                    case 'emails':
                    case 'reactions':
                    case 'social_media':
                    case 'forum_settings':
                    case 'widgets':
                        $this->addJSScript('
						var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
						elems.forEach(function(html) {
						  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
						});
						');

                        break;

                    case 'debugging_and_maintenance':
                        $this->addCSSStyle('
						.error_log {
	                        width: 100%;
	                        height: 400px;
	                        padding: 0 10px;
	                        -webkit-box-sizing: border-box;
	                        -moz-box-sizing: border-box;
	                        box-sizing: border-box;
	                        overflow-y: scroll;
	                        overflow-x: scroll;
	                        white-space: initial;
	                        background-color: #eceeef;
	                    }
						');

                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/ckeditor/ckeditor.js' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/toastr/toastr.min.js' => []
                        ]);

                        $this->addCSSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/toastr/toastr.min.css' => []
                        ]);

                        $this->addJSScript(Input::createEditor('InputMaintenanceMessage'));
                        $this->addJSScript('
						var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
						elems.forEach(function(html) {
						  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
						});
						');

                        break;

                    case 'privacy_and_terms':
                    case 'cookie_settings':
                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/ckeditor/ckeditor.js' => []
                        ]);

                        if (PANEL_PAGE === 'cookie_settings') {
                            $this->addJSScript(Input::createEditor('InputCookies'));
                            break;
                        }

                        $this->addJSScript(Input::createEditor('InputPrivacy'));
                        $this->addJSScript(Input::createEditor('InputTerms'));
                        break;

                    case 'registration':
                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/ckeditor/ckeditor.js' => []
                        ]);

                        $this->addJSScript(Input::createEditor('InputRegistrationDisabledMessage'));

                        $this->addJSScript('
						var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
						elems.forEach(function(html) {
						  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
						});
						/*
						 *  Submit form on clicking enable/disable registration
						 */
						var changeCheckbox = document.querySelector(\'.js-check-change\');
						changeCheckbox.onchange = function() {
						  $(\'#enableRegistration\').submit();
						};
						');

                        break;

                    case 'announcements':
                    case 'groups':
                        $this->addCSSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css' => []
                        ]);

                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/js/jquery-ui.min.js' => []
                        ]);

                        $this->addJSScript('
						var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
						elems.forEach(function(html) {
						  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
						});
						');

                        break;

                    case 'template':
                        if (isset($_GET['file'])) {
                            $this->addCSSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/codemirror/lib/codemirror.css' => []
                            ]);

                            $this->addJSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/codemirror/lib/codemirror.js' => [],
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/codemirror/mode/smarty/smarty.js' => [],
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/codemirror/mode/css/css.js' => [],
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/codemirror/mode/javascript/javascript.js' => [],
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/codemirror/mode/properties/properties.js' => []
                            ]);
                        }

                        if (isset($_GET['action']) && $_GET['action'] == 'permissions') {

                            $this->addJSScript('
							var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
							elems.forEach(function(html) {
							  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
							});
							');
                        }

                        break;

                    case 'custom_pages':
                        if (isset($_GET['action'])) {
                            $this->addJSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/ckeditor/ckeditor.js' => []
                            ]);

                            $this->addJSScript(Input::createEditor('inputContent', true));
                            $this->addJSScript('
							var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
							elems.forEach(function(html) {
							  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
							});
							');
                        }
                        break;

                    case 'seo':
                        $this->addCSSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Default/assets/css/dataTables.bootstrap4.min.css' => []
                        ]);

                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/dataTables/jquery.dataTables.min.js' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Default/assets/js/dataTables.bootstrap4.min.js' => []
                        ]);

                        $this->addJSScript('
                        $(document).ready(function() {
                            $(\'.dataTables-pages\').dataTable({
                                responsive: true,
                                language: {
                                    "lengthMenu": "' . $this->_language->get('table', 'display_records_per_page') . '",
                                    "zeroRecords": "' . $this->_language->get('table', 'nothing_found') . '",
                                    "info": "' . $this->_language->get('table', 'page_x_of_y') . '",
                                    "infoEmpty": "' . $this->_language->get('table', 'no_records') . '",
                                    "infoFiltered": "' . $this->_language->get('table', 'filtered') . '",
                                    "search": "' . $this->_language->get('general', 'search') . '",
                                    "paginate": {
                                        "next": "&raquo;",
                                        "previous": "&laquo;"
                                    }
                                }
                            });
                        });
                        ');
                        break;

                    case 'users':
                        if (!defined('EDITING_USER')) {
                            $this->addCSSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Default/assets/css/dataTables.bootstrap4.min.css' => []
                            ]);

                            $this->addJSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/dataTables/jquery.dataTables.min.js' => [],
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Default/assets/js/dataTables.bootstrap4.min.js' => []
                            ]);

                            $this->addJSScript('
							$(document).ready(function() {
								var usersTable = $(\'.dataTables-users\').DataTable({
									columnDefs: [
										{ targets: [0], sClass: "hide" },
										{ "width": "50%", target: 1 },
										{ "width": "25%", target: 2 },
										{ "width": "25%", target: 3 }
									],
									responsive: true,
									processing: true,
									serverSide: true,
									ajax: "' . URL::build('/queries/admin_users') . '",
									columns: [
										{ data: "id", hidden: true },
										{ data: "username" },
										{ data: "groupName", "orderable": false },
										{ data: "joined" }
									],
									language: {
										"lengthMenu": "' . $this->_language->get('table', 'display_records_per_page') . '",
										"zeroRecords": "' . $this->_language->get('table', 'nothing_found') . '",
										"info": "' . $this->_language->get('table', 'page_x_of_y') . '",
										"infoEmpty": "' . $this->_language->get('table', 'no_records') . '",
										"infoFiltered": "' . $this->_language->get('table', 'filtered') . '",
										"search": "' . $this->_language->get('general', 'search') . '",
										"paginate": {
										    "next": "&raquo;",
										    "previous": "&laquo;"
										}
									}
								});
								$(\'.dataTables-users tbody\').on(\'click\', \'tr\', function(){
									window.location.href = "' . URL::build('/panel/user/') . '" + usersTable.row(this).data().id;
								});
							});
							');

                        }
                        break;

                    case 'minecraft':
                        if (!defined('MINECRAFT_PAGE')) {

                            $this->addJSScript('
							var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
							elems.forEach(function(html) {
							  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
							});
							if($(\'.js-check-change\').length) {
						        var changeCheckbox = document.querySelector(\'.js-check-change\');
						        changeCheckbox.onchange = function () {
						            $(\'#enableMinecraft\').submit();
						        };
						    }
							');

                        } else if (MINECRAFT_PAGE == 'authme') {

                            $this->addJSScript('
							var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
							elems.forEach(function(html) {
							  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
							});
							if($(\'.js-check-change\').length) {
						        var changeCheckbox = document.querySelector(\'.js-check-change\');
						        changeCheckbox.onchange = function () {
						            $(\'#enableAuthMe\').submit();
						        };
						    }
							');

                        } else if (MINECRAFT_PAGE == 'verification') {

                            $this->addJSScript('
							var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
							elems.forEach(function(html) {
							  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
							});
							if($(\'.js-check-change\').length) {
						        var changeCheckbox = document.querySelector(\'.js-check-change\');
						        changeCheckbox.onchange = function () {
						            $(\'#enablePremium\').submit();
						        };
						    }
							');

                        } else if (MINECRAFT_PAGE == 'servers') {
                            $this->addJSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/js/jquery-ui.min.js' => []
                            ]);

                            $this->addJSScript('
							var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
							elems.forEach(function(html) {
							  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
							});
							');

                        } else if (MINECRAFT_PAGE == 'query_errors') {
                            $this->addCSSStyle('
							.error_log {
		                        width: 100%;
		                        height: 50px;
		                        padding: 0 10px;
		                        -webkit-box-sizing: border-box;
		                        -moz-box-sizing: border-box;
		                        box-sizing: border-box;
		                        overflow-y: scroll;
		                        overflow-x: scroll;
		                        white-space: initial;
		                        background-color: #eceeef;
		                    }
							');

                        } else if (MINECRAFT_PAGE == 'server_banners') {
                            if (isset($_GET['edit'])) {
                                $this->addCSSFiles([
                                    (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/image-picker/image-picker.css' => []
                                ]);

                                $this->addCSSStyle('
							    .thumbnails li img{
							        width: 200px;
							    }
								');

                                $this->addJSFiles([
                                    (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/image-picker/image-picker.min.js' => []
                                ]);

                                $this->addJSScript('$(".image-picker").imagepicker();');
                            }
                        } else if (MINECRAFT_PAGE == 'placeholders') {
                            $this->addJSScript('
                            var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
                            elems.forEach(function(html) {
                              var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
                            });
                            ');
                        }

                        break;

                    case 'hooks':
                    case 'discord':
                        $this->addJSScript('
							var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
							elems.forEach(function(html) {
							  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
							});
							');
                        break;
                    case 'security':
                        if (isset($_GET['view'])) {
                            $this->addCSSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Default/assets/css/dataTables.bootstrap4.min.css' => []
                            ]);

                            $this->addJSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/dataTables/jquery.dataTables.min.js' => [],
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/custom/panel_templates/Default/assets/js/dataTables.bootstrap4.min.js' => []
                            ]);

                            $this->addJSScript('
							$(document).ready(function() {
								$(\'.dataTable\').dataTable({
									responsive: true,
									language: {
										"lengthMenu": "' . $this->_language->get('table', 'display_records_per_page') . '",
										"zeroRecords": "' . $this->_language->get('table', 'nothing_found') . '",
										"info": "' . $this->_language->get('table', 'page_x_of_y') . '",
										"infoEmpty": "' . $this->_language->get('table', 'no_records') . '",
										"infoFiltered": "' . $this->_language->get('table', 'filtered') . '",
										"search": "' . $this->_language->get('general', 'search') . '",
										"paginate": {
										    "next": "&raquo;",
										    "previous": "&laquo;"
										}
									},
									order: [[ ' . SORT . ', \'desc\']]
								});
							});
							');
                        }
                        break;

                    case 'images':
                        $this->addCSSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/dropzone/dropzone.min.css' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/image-picker/image-picker.css' => []
                        ]);

                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/dropzone/dropzone.min.js' => [],
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/image-picker/image-picker.min.js' => [],
                        ]);

                        $this->addJSScript('
						// Dropzone options
						Dropzone.options.upload_background_dropzone = {
						    maxFilesize: 2,
						    dictDefaultMessage: "' . $this->_language->get('admin', 'drag_files_here') . '",
						    dictInvalidFileType: "' . $this->_language->get('admin', 'invalid_file_type') . '",
						    dictFileTooBig: "' . $this->_language->get('admin', 'file_too_big') . '",
					        error: function(file, response) {
					            console.log("ERROR");
					            console.log(file);
					            console.log(response);
					        },
					        success: function(file, response){
					            console.log("ACCEPTED");
					            console.log(file);
					            console.log(response);
					        }
						};
						Dropzone.options.upload_banner_dropzone = {
						    maxFilesize: 2,
						    dictDefaultMessage: "' . $this->_language->get('admin', 'drag_files_here') . '",
						    dictInvalidFileType: "' . $this->_language->get('admin', 'invalid_file_type') . '",
						    dictFileTooBig: "' . $this->_language->get('admin', 'file_too_big') . '",
					        error: function(file, response) {
					            console.log("ERROR");
					            console.log(file);
					            console.log(response);
					        },
					        success: function(file, response){
					            console.log("ACCEPTED");
					            console.log(file);
					            console.log(response);
					        }
						};
						$(".image-picker").imagepicker();
						');
                        break;

                    case 'forums':
                        if (isset($_GET['forum'])) {

                            $this->addJSFiles([
                                (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/plugins/ckeditor/ckeditor.js' => []
                            ]);

                            $this->addJSScript(Input::createEditor('InputPlaceholder', true));
                        }

                        $this->addJSFiles([
                            (defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/js/jquery-ui.min.js' => []
                        ]);

                        $this->addJSScript('
						var elems = Array.prototype.slice.call(document.querySelectorAll(\'.js-switch\'));
						elems.forEach(function(html) {
						  var switchery = new Switchery(html, {color: \'#23923d\', secondaryColor: \'#e56464\'});
						});
						');

                        break;
				}
			}
		}
	}
}

$template = new Argon_Panel_Template($cache, $smarty, $language, $user, $pages);
