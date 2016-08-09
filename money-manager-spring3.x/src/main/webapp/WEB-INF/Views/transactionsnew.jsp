<!DOCTYPE html>

<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Meta, title, CSS, favicons, etc. -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>Money Manager | Add Transaction</title>

		<!-- Bootstrap -->
		<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- iCheck -->
		<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
		<!-- bootstrap-wysiwyg -->
		<link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
		<!-- Select2 -->
		<link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
		<!-- Switchery -->
		<link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
		<!-- starrr -->
		<link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">

		<!-- Custom Theme Style -->
		<link href="../build/css/custom.min.css" rel="stylesheet">

		<style type="text/css">
			.categoryIcons {
				margin: 0;
				padding: 0;
				padding-bottom: 1.6em;
				list-style: none;
				overflow: hidden;
				clear: both;
				display: -webkit-box;
				display: -moz-box;
				display: box;
				display: -webkit-flex;
				display: -moz-flex;
				display: -ms-flexbox;
				display: flex;
				-webkit-flex-flow: wrap;
				-moz-flex-flow: wrap;
				-ms-flex-flow: wrap;
				flex-flow: wrap;
				-webkit-box-pack: center;
				-moz-box-pack: center;
				box-pack: center;
				-webkit-justify-content: center;
				-moz-justify-content: center;
				-ms-justify-content: center;
				-o-justify-content: center;
				justify-content: center;
				-ms-flex-pack: center;
			}
			.categoryIcons .categoryIcon {
				margin: 1em;
				padding: 1em;
				width: 6em;
				height: 6em;
				position: relative;
				cursor: pointer;
				text-align: center;
				border-radius: 1em;
				border: 2px dashed transparent;
			}
		</style>
	</head>

	<body class="nav-md">
		<div class="container body">
			<div class="main_container">
				<div class="col-md-3 left_col menu_fixed">
					<div class="left_col scroll-view">
						<div class="navbar nav_title" style="border: 0;">
							<a href="index.html" class="site_title">
								<i class="fa fa-inr"></i>
								<span>Money Manager</span>
							</a>
						</div>

						<div class="clearfix"></div>

						<!-- menu profile quick info -->
						<div class="profile">
							<div class="profile_pic">
								<img src="images/photo.jpg" alt="..." class="img-circle profile_img">
							</div>

							<div class="profile_info">
								<span>Welcome,</span>
								<h2>Hari Krishnan</h2>
							</div>
						</div>
						<!-- /menu profile quick info -->

						<br />

						<!-- sidebar menu -->
						<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
							<div class="menu_section">
								<ul class="nav side-menu">
									<li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="index.html">Dashboard</a></li>
											<li><a href="index2.html">Dashboard2</a></li>
											<li><a href="index3.html">Dashboard3</a></li>
										</ul>
								</li>

									<li><a><i class="fa fa-desktop"></i> Accounts <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="general_elements.html">SBI</a></li>
											<li><a href="media_gallery.html">Axis</a></li>
											<li><a href="typography.html">ICICI</a></li>
											<li><a href="icons.html">Muthoot</a></li>
											<li><a href="accountsviewall.html">View All</a></li>
											<li><a href="icons.html">Create New</a></li>
										</ul>
								</li>

									<li><a><i class="fa fa-edit"></i> Transactions <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="transactionsnew.html">New Transaction</a></li>
											<li><a href="transactionsview.html">View Transactions</a></li>
										</ul>
								</li>

									<li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="tables.html">Tables</a></li>
											<li><a href="tables_dynamic.html">Table Dynamic</a></li>
										</ul>
								</li>

									<li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="chartjs.html">Chart JS</a></li>
											<li><a href="chartjs2.html">Chart JS2</a></li>
											<li><a href="morisjs.html">Moris JS</a></li>
											<li><a href="echarts.html">ECharts</a></li>
											<li><a href="other_charts.html">Other Charts</a></li>
										</ul>
								</li>

									<li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
											<li><a href="fixed_footer.html">Fixed Footer</a></li>
										</ul>
								</li>
								</ul>
							</div>

							<div class="menu_section">
								<h3>Live On</h3>

								<ul class="nav side-menu">
									<li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="e_commerce.html">E-commerce</a></li>
											<li><a href="projects.html">Projects</a></li>
											<li><a href="project_detail.html">Project Detail</a></li>
											<li><a href="contacts.html">Contacts</a></li>
											<li><a href="profile.html">Profile</a></li>
										</ul>
								</li>

									<li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="page_403.html">403 Error</a></li>
											<li><a href="page_404.html">404 Error</a></li>
											<li><a href="page_500.html">500 Error</a></li>
											<li><a href="plain_page.html">Plain Page</a></li>
											<li><a href="login.html">Login Page</a></li>
											<li><a href="pricing_tables.html">Pricing Tables</a></li>
										</ul>
								</li>

									<li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
										<ul class="nav child_menu">
											<li><a href="#level1_1">Level One</a></li>
											<li><a>Level One<span class="fa fa-chevron-down"></span></a>
												<ul class="nav child_menu">
													<li class="sub_menu"><a href="level2.html">Level Two</a></li>
													<li><a href="#level2_1">Level Two</a></li>
													<li><a href="#level2_2">Level Two</a></li>
												</ul>
										</li>
											<li><a href="#level1_2">Level One</a></li>
										</ul>
								</li>
								</ul>
							</div>
						</div>
						<!-- /sidebar menu -->

						<!-- /menu footer buttons -->
						<div class="sidebar-footer hidden-small">
							<a data-toggle="tooltip" data-placement="top" title="Settings">
								<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
							</a>
							<a data-toggle="tooltip" data-placement="top" title="FullScreen">
								<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
							</a>
							<a data-toggle="tooltip" data-placement="top" title="Lock">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
							</a>
							<a data-toggle="tooltip" data-placement="top" title="Logout">
								<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
							</a>
						</div>
					<!-- /menu footer buttons -->
					</div>
				</div>

				<!-- top navigation -->
				<div class="top_nav">
					<div class="nav_menu">
						<nav>
							<div class="nav toggle">
								<a id="menu_toggle"><i class="fa fa-bars"></i></a>
							</div>

							<ul class="nav navbar-nav navbar-right">
								<li class="">
									<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										<img src="images/photo.jpg" alt="">Hari Krishnan <span class=" fa fa-angle-down"></span>
									</a>

									<ul class="dropdown-menu dropdown-usermenu pull-right">
										<li><a href="javascript:;"> Profile</a></li>
										<li>
											<a href="javascript:;">
												<span class="badge bg-red pull-right">50%</span>
												<span>Settings</span>
											</a>
									</li>
										<li><a href="javascript:;">Help</a></li>
										<li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
									</ul>
							</li>

								<li role="presentation" class="dropdown">
									<a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
										<i class="fa fa-envelope-o"></i>
										<span class="badge bg-green">6</span>
									</a>

									<ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
										<li>
											<a>
												<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
												<span>
													<span>John Smith</span>
													<span class="time">3 mins ago</span>
												</span>
												<span class="message">
													Film festivals used to be do-or-die moments for movie makers. They were where...
												</span>
											</a>
									</li>

										<li>
											<a>
												<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
												<span>
													<span>John Smith</span>
													<span class="time">3 mins ago</span>
												</span>
												<span class="message">
													Film festivals used to be do-or-die moments for movie makers. They were where...
												</span>
											</a>
									</li>

										<li>
											<a>
												<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
												<span>
													<span>John Smith</span>
													<span class="time">3 mins ago</span>
												</span>
												<span class="message">
													Film festivals used to be do-or-die moments for movie makers. They were where...
												</span>
											</a>
									</li>

										<li>
											<a>
												<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
												<span>
													<span>John Smith</span>
													<span class="time">3 mins ago</span>
												</span>
												<span class="message">
													Film festivals used to be do-or-die moments for movie makers. They were where...
												</span>
											</a>
									</li>

										<li>
											<div class="text-center">
												<a>
													<strong>See All Alerts</strong>
													<i class="fa fa-angle-right"></i>
												</a>
											</div>
									</li>
									</ul>
							</li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- /top navigation -->

				<!-- page content -->
				<div class="right_col" role="main">
					<div class="">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>New Transaction <small>(Add a new transaction)</small></h2>

										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
													<i class="fa fa-wrench"></i>
												</a>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Settings 1</a></li>
													<li><a href="#">Settings 2</a></li>
												</ul>
											</li>
											<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										</ul>

										<div class="clearfix"></div>
									</div>

									<div class="x_content">
										<br />

										<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="text" id="name" required="required" class="form-control col-md-7 col-xs-12">
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name" style="padding-top: 20px;">Category 
													<span class="required">*</span>
												</label>
												<div class="col-md-1 col-sm-6 col-xs-12">
													<img src="images/img.jpg" alt="Category Icon" role="button" data-toggle="modal" 
															data-target=".bs-example-modal-lg"class="img-circle img-responsive">
												</div>

												<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
													<div class="modal-dialog modal-lg">
														<div class="modal-content">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
																<h4 class="modal-title" id="myModalLabel">Select Category</h4>
															</div>

															<div class="modal-body">
															</div>

															<div class="modal-footer">
																<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																<button type="button" class="btn btn-primary">Save changes</button>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Is this an expense ?</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="" style="padding-top: 5px;">
														<label>
															<input type="checkbox" class="js-switch" checked />
														</label>
													</div>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" style="padding-top: 40px;">Tags</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input id="tags_1" type="text" class="tags form-control" value="social, adverts, sales" />
													<div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">When ? <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input id="transactionDate" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
												</div>
											</div>

											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Details <span class="required">*</span></label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div id="alerts"></div>

													<div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor">
														<div class="btn-group">
															<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font">
																<i class="fa fa-wrench"></i><b class="caret"></b>
															</a>
														</div>

														<div class="btn-group">
															<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size">
																<i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b>
															</a>
															<ul class="dropdown-menu">
																<li>
																	<a data-edit="fontSize 5">
																		<p style="font-size:17px">Huge</p>
																	</a>
															</li>
																<li>
																	<a data-edit="fontSize 3">
																		<p style="font-size:14px">Normal</p>
																	</a>
															</li>
																<li>
																	<a data-edit="fontSize 1">
																		<p style="font-size:11px">Small</p>
																	</a>
															</li>
															</ul>
														</div>

														<div class="btn-group">
															<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
															<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
															<a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
															<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
														</div>

														<div class="btn-group">
															<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
															<a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
															<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
															<a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
														</div>

														<div class="btn-group">
															<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
															<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
															<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
															<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
														</div>

														<div class="btn-group">
															<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
															<div class="dropdown-menu input-append">
																<input class="span2" placeholder="URL" type="text" data-edit="createLink" />
																<button class="btn" type="button">Add</button>
															</div>
															<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
														</div>

														<div class="btn-group">
															<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
															<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
														</div>

														<div class="btn-group">
															<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
															<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
														</div>
													</div>

													<div id="editor" class="editor-wrapper"></div>

													<textarea name="descr" id="descr" style="display:none;"></textarea>
												</div>
											</div>

											<div class="ln_solid"></div>

											<div class="form-group">
												<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
													<button type="submit" class="btn btn-success pull-right">Submit</button>
													<button type="submit" class="btn btn-primary pull-right">Cancel</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /page content -->

				<!-- footer content -->
				<footer>
					<div class="pull-right">Money Manager (Based on Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>)</div>
					<div class="clearfix"></div>
				</footer>
				<!-- /footer content -->
			</div>
		</div>

		<!-- jQuery -->
		<script src="../vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="../vendors/fastclick/lib/fastclick.js"></script>
		<!-- NProgress -->
		<script src="../vendors/nprogress/nprogress.js"></script>
		<!-- bootstrap-progressbar -->
		<script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		<!-- iCheck -->
		<script src="../vendors/iCheck/icheck.min.js"></script>
		<!-- bootstrap-daterangepicker -->
		<script src="js/moment/moment.min.js"></script>
		<script src="js/datepicker/daterangepicker.js"></script>
		<!-- bootstrap-wysiwyg -->
		<script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
		<script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
		<script src="../vendors/google-code-prettify/src/prettify.js"></script>
		<!-- jQuery Tags Input -->
		<script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
		<!-- Switchery -->
		<script src="../vendors/switchery/dist/switchery.min.js"></script>
		
		<!-- Custom Theme Scripts -->
		<script src="../build/js/custom.min.js"></script>

		<script>
			// Alerts on Transaction Tag ADD/EDIT/DELETE (For Transaction Tags Field)
			function onAddTag(tag) {
				alert("Added a tag: " + tag);
			}
			function onRemoveTag(tag) {
				alert("Removed a tag: " + tag);
			}
			function onChangeTag(input, tag) {
				alert("Changed a tag: " + tag);
			}

			// Init Script for Bootstrap WYSIWYG Editor (For Transaction Details Field)
			function initToolbarBootstrapBindings() {
				var fonts = [
					'Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
					'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 
					'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
					'Times New Roman', 'Verdana'
				],
				fontTarget = $('[title=Font]').siblings('.dropdown-menu');

				$.each(fonts, function(idx, fontName) {
					fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
				});

				$('a[title]').tooltip({
					container: 'body'
				});

				$('.dropdown-menu input').click(function() {
					return false;
				}).change(function() {
					$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
				}).keydown('esc', function() {
					this.value = '';
					$(this).change();
				});

				$('[data-role=magic-overlay]').each(function() {
					var overlay = $(this),
					target = $(overlay.data('target'));

					overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
				});

				if ("onwebkitspeechchange" in document.createElement("input")) {
					var editorOffset = $('#editor').offset();

					$('.voiceBtn').css('position', 'absolute').offset({
						top  : editorOffset.top,
						left : editorOffset.left + $('#editor').innerWidth() - 35
					});
				} else {
					$('.voiceBtn').hide();
				}
			}

			function showErrorAlert(reason, detail) {
				var msg = '';

				if (reason === 'unsupported-file-type') {
					msg = "Unsupported format " + detail;
				} else {
					console.log("error uploading file", reason, detail);
				}
				
				$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
					'<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
			}

			$(document).ready(function() {
				// Bootstrap DateRangepicker (For Transaction Date Field: #transactionDate)
				$('#transactionDate').daterangepicker({
					singleDatePicker : true,
					calender_style   : "picker_3"
				}, 
				function(start, end, label) {
					console.log(start.toISOString(), end.toISOString(), label);
				});

				// Initialize Bootstrap WYSIWYG Editor (For Transaction Details Field)
				initToolbarBootstrapBindings();

				$('#editor').wysiwyg({
					fileUploadError : showErrorAlert
				});

				window.prettyPrint;
				prettyPrint();

				// jQuery Tags (For Transaction Tags Field)
				$('#tags_1').tagsInput({
					width : 'auto'
				});
			});
		</script>
	</body>
</html>