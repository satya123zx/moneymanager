<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Money Manager | View Accounts</title>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- jQuery -->
<script src="../vendors/jquery/dist/jquery.min.js"></script>

<!-- Custom Theme Style -->
<link href="../build/css/custom.min.css" rel="stylesheet">

<!-- jQuery -->

<style type="text/css">
.page-title .title_left h3 {
	font-size: 20px;
	font-weight: bold;
}

.tile-stats .icon {
	right: 45px;
	top: 12px;
}

.tile-stats .count {
	font-size: 18px;
}

.tile-stats h3 {
	font-size: 15px;
}

input.edittableInputText  {
	border: none;
	background: transparent;
}
</style>
<!-- jQuery -->
<script src="../vendors/jquery/dist/jquery.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						$("input[name='accountType']")
								.change(
										function() {

											if ($(
													"input[name='accountType']:checked")
													.val() == 'Loans') {
												$("#hideCreditLimitFieldDiv")
														.slideUp();
												$(".accountCreditLimitClass")
														.val(0);
											} else if ($(
													"input[name='accountType']:checked")
													.val() == 'Accounts') {
												$("#hideCreditLimitFieldDiv")
														.slideUp();
												$(".accountCreditLimitClass")
														.val(0);
											} else if ($(
													"input[name='accountType']:checked")
													.val() == 'Cards') {
												$("#hideCreditLimitFieldDiv")
														.slideDown();
												//$(".accountCreditLimitClass").val(" ");
											}
										});

						//accountName
						$("#submit")
								.click(
										function() {

											var accountNameText;
											var accName = $("#accountName")
													.val();
											var num = new RegExp("[0-9]");

											//accountName
											if (accName == "" || accName == 0) {
												accountNameText = "Account Name can't be blank";
												document
														.getElementById("accountNameValid").innerHTML = accountNameText;
												return false;
											} else if (num.test(accName)) {
												accountNameText = "Account Name can't be Number";
												document
														.getElementById("accountNameValid").innerHTML = accountNameText;
												return false;
											} else {
												document
														.getElementById("accountNameValid").innerHTML = " ";
												return (true);
											}
										});

						//accountNo
						$("#submit")
								.click(
										function() {
											var accountNoTest;
											var accNo = $("#accountNo").val();
											var num1 = new RegExp("[a-zA-Z ]");

											if (accNo == "") {
												accountNoTest = "Account No can't be blank";
												document
														.getElementById("accountNoValid").innerHTML = accountNoTest;
												return false;
											} else if (accNo == 0) {
												accountNoTest = "Account No can't be Zero";
												document
														.getElementById("accountNoValid").innerHTML = accountNoTest;
												return false;
											} else if (num1.test(accNo)) {
												accountNoTest = "Account No can't be Alphabet";
												document
														.getElementById("accountNoValid").innerHTML = accountNoTest;
												return false;
											} else {
												document
														.getElementById("accountNoValid").innerHTML = " ";
												return (true);
											}

										});

						//accountBalanceValid
						$("#submit")
								.click(
										function() {
											var accountBalanceTest;
											var accBalance = $(
													"#accountBalance").val();
											var num1 = new RegExp("[a-zA-Z ]");

											//accountBalanceValid
											if (accBalance == "") {
												accountBalanceTest = "Account Balance can't be blank";
												document
														.getElementById("accountBalanceValid").innerHTML = accountBalanceTest;
												return false;
											} else if (accBalance == 0) {
												accountBalanceTest = "Account Balance can't be zero";
												document
														.getElementById("accountBalanceValid").innerHTML = accountBalanceTest;
												return false;
											} else if (num1.test(accBalance)) {
												accountBalanceTest = "Account Balance can't be Alphabet";
												document
														.getElementById("accountBalanceValid").innerHTML = accountBalanceTest;
												return false;
											} else {
												document
														.getElementById("accountBalanceValid").innerHTML = " ";
												return (true);
											}
										});

						//accountTypeValid
						//accountCreditLimitValid
						$("#submit")
								.click(
										function() {
											var accountTypeTest;
											var accType = $(
													"input[name='accountType']:checked")
													.val();
											if (accType == null) {
												accountTypeTest = "Account Type can't be blank";
												document
														.getElementById("accountTypeValid").innerHTML = accountTypeTest;
												return false;
											} else if (accType == "Cards") {
												var accountCreditLimitTest;
												var accCreditLimit = $(
														"#accountCreditLimit")
														.val();
												var num1 = new RegExp(
														"[a-zA-Z ]");
												if (accCreditLimit == " ") {
													//alert("accCreditLimit step 1")
													accountCreditLimitTest = "Credit Limit can't be blank";
													document
															.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
													return false;
												} else if (accCreditLimit == 0) {
													//alert("accCreditLimit step 2")
													accountCreditLimitTest = "Credit Limit can't be Zero";
													document
															.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
													return false;
												} else if (num1
														.test(accCreditLimit)) {
													accountCreditLimitTest = "Credit Limit   can't be Alphabet";
													document
															.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
													return false;
												} else {
													document
															.getElementById("accountCreditLimitValid").innerHTML = " ";
													return (true);
												}
											}

											else {
												document
														.getElementById("accountTypeValid").innerHTML = " ";
												return (true);

											}
										});

					});
	function LoadAjax(accountID){
		$.ajax({
			type	:	"POST",
			url 	:	"deleteAccount",
			data	:	{
				accountID	:	accountID
					},
			success	:	function(response){
				    window.location.reload();
			}
			
		});
		}
</script>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col menu_fixed">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"> <i class="fa fa-inr"></i>
							<span>Money Manager</span>
						</a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img src="images/photo.jpg" alt="..."
								class="img-circle profile_img">
						</div>

						<div class="profile_info">
							<span>Welcome,</span>
							<h2>Hari Krishnan</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> Home <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="index.html">Dashboard</a></li>
										<li><a href="index2.html">Dashboard2</a></li>
										<li><a href="index3.html">Dashboard3</a></li>
									</ul></li>

								<li><a><i class="fa fa-desktop"></i> Accounts <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="general_elements.html">SBI</a></li>
										<li><a href="media_gallery.html">Axis</a></li>
										<li><a href="typography.html">ICICI</a></li>
										<li><a href="icons.html">Muthoot</a></li>
										<li><a href="accountsviewall.html">View All</a></li>
										<li><a href="newaccount">Create New</a></li>
									</ul></li>

								<li><a><i class="fa fa-edit"></i> Transactions <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="transactionsnew.html">New Transaction</a></li>
										<li><a href="transactionsview.html">View Transactions</a></li>
									</ul></li>

								<li><a><i class="fa fa-table"></i> Tables <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="tables.html">Tables</a></li>
										<li><a href="tables_dynamic.html">Table Dynamic</a></li>
									</ul></li>

								<li><a><i class="fa fa-bar-chart-o"></i> Data
										Presentation <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="chartjs.html">Chart JS</a></li>
										<li><a href="chartjs2.html">Chart JS2</a></li>
										<li><a href="morisjs.html">Moris JS</a></li>
										<li><a href="echarts.html">ECharts</a></li>
										<li><a href="other_charts.html">Other Charts</a></li>
									</ul></li>

								<li><a><i class="fa fa-clone"></i>Layouts <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
										<li><a href="fixed_footer.html">Fixed Footer</a></li>
									</ul></li>
							</ul>
						</div>

						<div class="menu_section">
							<h3>Live On</h3>

							<ul class="nav side-menu">
								<li><a><i class="fa fa-bug"></i> Additional Pages <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="e_commerce.html">E-commerce</a></li>
										<li><a href="projects.html">Projects</a></li>
										<li><a href="project_detail.html">Project Detail</a></li>
										<li><a href="contacts.html">Contacts</a></li>
										<li><a href="profile.html">Profile</a></li>
									</ul></li>

								<li><a><i class="fa fa-windows"></i> Extras <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="page_403.html">403 Error</a></li>
										<li><a href="page_404.html">404 Error</a></li>
										<li><a href="page_500.html">500 Error</a></li>
										<li><a href="plain_page.html">Plain Page</a></li>
										<li><a href="login.html">Login Page</a></li>
										<li><a href="pricing_tables.html">Pricing Tables</a></li>
									</ul></li>

								<li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#level1_1">Level One</a></li>
										<li><a>Level One<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li class="sub_menu"><a href="level2.html">Level
														Two</a></li>
												<li><a href="#level2_1">Level Two</a></li>
												<li><a href="#level2_2">Level Two</a></li>
											</ul></li>
										<li><a href="#level1_2">Level One</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout">
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
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src="images/photo.jpg" alt="">Hari
									Krishnan <span class=" fa fa-angle-down"></span>
							</a>

								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="javascript:;"> Profile</a></li>
									<li><a href="javascript:;"> <span
											class="badge bg-red pull-right">50%</span> <span>Settings</span>
									</a></li>
									<li><a href="javascript:;">Help</a></li>
									<li><a href="login.html"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
							</a>

								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">
									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>

									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>

									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>

									<li><a> <span class="image"><img
												src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
													Smith</span> <span class="time">3 mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>

									<li>
										<div class="text-center">
											<a> <strong>See All Alerts</strong> <i
												class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Savings</h3>
						</div>
					</div>

					<div class="clearfix"></div>


					<div class="row top_tiles">
					
						<c:forEach items="${accounts.savingsAccount}" var="account"
							varStatus="savingsAccountstatus">
							<div
								class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="tile-stats">
									<div class="btn-group">
									<i class="btn dropdown-toggle fa fa-wrench" data-toggle="modal" role="button" title="Edit" data-target="#savingsAccountdivIDNo${savingsAccountstatus.index}"></i>
							
								</div>
									<div class="icon">
										<img src="images/sbi.png" width="50px" height="50px" />
									</div>
									<div class="count">
										<c:out value="${account.accountName}" />
									</div>
									<h3>${account.accountNo}</h3>
									<p>
										Amount:- <i class="fa fa-inr"></i> ${account.accountBalance}
									</p>
								</div>
							</div>
							<!-- Fade in and Fade out View  -->
								<div class="modal fade bs-example-modal-lg" id="savingsAccountdivIDNo${savingsAccountstatus.index}" tabindex="-1" role="dialog" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
										
												<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span></button>
												<h4 class="modal-title" id="myModalLabel">EDIT ACCOUNT</h4>
												</div>
													<form:form cssClass="form-horizontal form-label-left" action="updateAccount" method="post" modelAttribute="updateAccountDetails"
															   name="NewAccountValidation" onsubmit="return validateForm()">
												<div class="modal-body">
												
												<div class="x_panel">
							<div class="x_content">
								<br/>
							

									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountName">Account Name 
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
										<form:input path="accountName" 
												cssClass="form-control col-md-7 col-xs-12" value ="${account.accountName}"/>
								
											<span class="required" id="accountNameValid"></span>
										</div>
									</div>
									
									<form:hidden path="accountID" value="${account.accountID}"/>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountNo">Account No 
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="accountNo"
												cssClass="form-control col-md-7 col-xs-12" value  ="${account.accountNo}" />
											<span class="required" id="accountNoValid"></span>
										</div>
									</div>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountNo">Account Type 
										</form:label>
										
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div id="accountType" class="btn-group" data-toggle="buttons">
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Loans" />&nbsp;Loan &nbsp;
													</form:label>
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Accounts" />&nbsp;Savings &nbsp;
													</form:label>
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Cards" id="accountTypeCredit"/>&nbsp;Credit &nbsp;
													</form:label>
												<br> <br>
												<span class="required" id="accountTypeValid"></span>
											</div>
										</div>

									</div>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountBalance">Account Balance
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="accountBalance"
												class="form-control col-md-7 col-xs-12" value  = "${account.accountBalance}" />
									
											<span class="required" id="accountBalanceValid"></span>
										</div>
									</div>

									<div id="hideCreditLimitFieldDiv">
										<div class="form-group">
											<form:label
												cssClass="control-label col-md-3 col-sm-3 col-xs-12"
												path="accountCreditLimit">Credit Limit
						
											</form:label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<form:input path="accountCreditLimit"
													class="form-control col-md-7 col-xs-12" value  = "${account.accountCreditLimit}" />
												
												<span class="required" id="accountCreditLimitValid"></span>
											</div>
										</div>
									</div>
									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
											<!-- <button type="button" onclick="location.href='/accountsviewall" class="btn btn-primary">Cancel</button> -->
										</div>
									</div>

								
							
							</div>
							
						</div>
						<!-- MY form ends here -->
												
												
												</div>
												<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												<button type="submit" class="btn btn-primary">Save changes</button>
												<button type="button" onclick="LoadAjax(${account.accountID})" class="btn btn-danger" data-dismiss="modal">Delete</button>
												</div>
												</form:form>
												
												
							
										</div>
									</div>
								</div>
						</c:forEach>
					</div>

					<div class="clearfix"></div>

					<div class="page-title">
						<div class="title_left">
							<h3>Credit Card</h3>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="row top_tiles">
						<c:forEach items="${accounts.creditAccount}" var="account"
							varStatus="creditAccountstatus">
							<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" >
								<div class="tile-stats">
								<div class="btn-group">
									<i class="btn dropdown-toggle fa fa-wrench" data-toggle="modal" role="button" title="Edit" data-target="#creditAccountdivIDNo${creditAccountstatus.index}"></i>
							
								</div>
								
									<div class="icon">
										<img src="images/sbi.png" width="50px" height="50px" />
									</div>
									
									<div class="count">
										<c:out value="${account.accountName}" />
									</div>
									
									<h3 class="">${account.accountNo}</h3>
									
									<p>Amount:- <i class="fa fa-inr" style="size: 10px;">${account.accountBalance}</i></p>
									
									<p>Credit Limit:- <i class="fa fa-inr"></i>${account.accountCreditLimit}</p>
									
								</div>
							</div>
							
							<!-- Fade in and Fade out View  -->
								<div class="modal fade bs-example-modal-lg" id="creditAccountdivIDNo${creditAccountstatus.index}" tabindex="-1" role="dialog" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
										
												<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span></button>
												<h4 class="modal-title" id="myModalLabel">EDIT ACCOUNT</h4>
												</div>
													<form:form cssClass="form-horizontal form-label-left" action="updateAccount" method="post" modelAttribute="updateAccountDetails"
															   name="NewAccountValidation" onsubmit="return validateForm()">
												<div class="modal-body">
												
												<div class="x_panel">
							<div class="x_content">
								<br/>
							

									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountName">Account Name 
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
										<form:input path="accountName" 
												cssClass="form-control col-md-7 col-xs-12" value ="${account.accountName}"/>
								
											<span class="required" id="accountNameValid"></span>
										</div>
									</div>
									
									<form:hidden path="accountID" value="${account.accountID} "/>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountNo">Account No 
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="accountNo"
												cssClass="form-control col-md-7 col-xs-12" value  ="${account.accountNo}" />
											<span class="required" id="accountNoValid"></span>
										</div>
									</div>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountNo">Account Type 
										</form:label>
										
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div id="accountType" class="btn-group" data-toggle="buttons">
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Loans" />&nbsp;Loan &nbsp;
													</form:label>
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Accounts" />&nbsp;Savings &nbsp;
													</form:label>
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Cards" id="accountTypeCredit"/>&nbsp;Credit &nbsp;
													</form:label>
												<br> <br>
												<span class="required" id="accountTypeValid"></span>
											</div>
										</div>

									</div>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountBalance">Account Balance
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="accountBalance"
												class="form-control col-md-7 col-xs-12" value  = "${account.accountBalance}" />
									
											<span class="required" id="accountBalanceValid"></span>
										</div>
									</div>

									<div id="hideCreditLimitFieldDiv">
										<div class="form-group">
											<form:label
												cssClass="control-label col-md-3 col-sm-3 col-xs-12"
												path="accountCreditLimit">Credit Limit
						
											</form:label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<form:input path="accountCreditLimit"
													class="form-control col-md-7 col-xs-12" value  = "${account.accountCreditLimit}" />
												
												<span class="required" id="accountCreditLimitValid"></span>
											</div>
										</div>
									</div>
									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
											<!-- <button type="button" onclick="location.href='/accountsviewall" class="btn btn-primary">Cancel</button> -->
										</div>
									</div>

								
							
							</div>
							
						</div>
						<!-- MY form ends here -->
												
												
												</div>
												<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												<button type="submit" class="btn btn-primary">Save changes</button>
												<button type="button" onclick="LoadAjax(${account.accountID})" class="btn btn-danger" data-dismiss="modal">Delete</button>
												</div>
												</form:form>
												
												
							
										</div>
									</div>
								</div>
						</c:forEach>
					</div>


					<div class="clearfix"></div>

					<div class="page-title">
						<div class="title_left">
							<h3>Loans</h3>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="row top_tiles">
						<c:forEach items="${accounts.loanAccount}" var="account"
							varStatus="loanAccountstatus">
							<div
								class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="tile-stats">
								<div class="btn-group">
									<i class="btn dropdown-toggle fa fa-wrench" data-toggle="modal" role="button" title="Edit" data-target="#loanAccountdivIDNo${loanAccountstatus.index}"></i>
							
								</div>
									<div class="icon">
										<img src="images/sbi.png" width="50px" height="50px" />
									</div>
									<div class="count">
										<c:out value="${account.accountName}" />
									</div>
									<h3>${account.accountNo}</h3>
									<p>Amount:- <i class="fa fa-inr"></i> ${account.accountBalance}</p>
								</div>
							</div>
						<!-- Fade in and Fade out View  -->
								<div class="modal fade bs-example-modal-lg" id="loanAccountdivIDNo${loanAccountstatus.index}" tabindex="-1" role="dialog" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
										
												<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span></button>
												<h4 class="modal-title" id="myModalLabel">EDIT ACCOUNT</h4>
												</div>
													<form:form cssClass="form-horizontal form-label-left" action="updateAccount" method="post" modelAttribute="updateAccountDetails"
															   name="NewAccountValidation" onsubmit="return validateForm()">
												<div class="modal-body">
												
												<div class="x_panel">
							<div class="x_content">
								<br/>
							

									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountName">Account Name 
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
										<form:input path="accountName" 
												cssClass="form-control col-md-7 col-xs-12" value ="${account.accountName}"/>
								
											<span class="required" id="accountNameValid"></span>
										</div>
									</div>
									
									<form:hidden path="accountID" value="${account.accountID} "/>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountNo">Account No 
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="accountNo"
												cssClass="form-control col-md-7 col-xs-12" value  ="${account.accountNo}" />
											<span class="required" id="accountNoValid"></span>
										</div>
									</div>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountNo">Account Type 
										</form:label>
										
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div id="accountType" class="btn-group" data-toggle="buttons">
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Loans" />&nbsp;Loan &nbsp;
													</form:label>
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Accounts" />&nbsp;Savings &nbsp;
													</form:label>
												<form:label cssClass="btn btn-default"
													data-toggle-class="btn-primary"
													data-toggle-passive-class="btn-default" path="accountType">
													<form:radiobutton path="accountType" cssClass="accType"
														value="Cards" id="accountTypeCredit"/>&nbsp;Credit &nbsp;
													</form:label>
												<br> <br>
												<span class="required" id="accountTypeValid"></span>
											</div>
										</div>

									</div>
									<div class="form-group">
										<form:label
											cssClass="control-label col-md-3 col-sm-3 col-xs-12"
											path="accountBalance">Account Balance
										</form:label>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<form:input path="accountBalance"
												class="form-control col-md-7 col-xs-12" value  = "${account.accountBalance}" />
									
											<span class="required" id="accountBalanceValid"></span>
										</div>
									</div>

									<div id="hideCreditLimitFieldDiv">
										<div class="form-group">
											<form:label
												cssClass="control-label col-md-3 col-sm-3 col-xs-12"
												path="accountCreditLimit">Credit Limit
						
											</form:label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<form:input path="accountCreditLimit"
													class="form-control col-md-7 col-xs-12" value  = "${account.accountCreditLimit}" />
												
												<span class="required" id="accountCreditLimitValid"></span>
											</div>
										</div>
									</div>
									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
											<!-- <button type="button" onclick="location.href='/accountsviewall" class="btn btn-primary">Cancel</button> -->
										</div>
									</div>

								
							
							</div>
							
						</div>
						<!-- MY form ends here -->
												
												
												</div>
												<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												<button type="submit" class="btn btn-primary">Save changes</button>
												<button type="button" onclick="LoadAjax(${account.accountID})" class="btn btn-danger" data-dismiss="modal">Delete</button>
												</div>
												</form:form>
												
												
							
										</div>
									</div>
								</div>	

							
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">
					Money Manager (Based on Gentelella - Bootstrap Admin Template by <a
						href="https://colorlib.com">Colorlib</a>)
				</div>
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

	<!-- Custom Theme Scripts -->
	<script src="../build/js/custom.min.js"></script>
</body>
</html>