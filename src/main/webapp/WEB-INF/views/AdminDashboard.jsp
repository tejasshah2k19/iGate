<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<jsp:include page="AdminCss.jsp"></jsp:include>
</head>
<body class="sidebar-mini layout-fixed" style="height: auto;">
	<div class="wrapper">
		<div
			class="preloader flex-column justify-content-center align-items-center"
			style="height: 0px;">
			<img class="animation__shake" src="dist/img/AdminLTELogo.png"
				alt="AdminLTELogo" height="60" width="60" style="display: none;">
		</div>
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<jsp:include page="AdminSidebar.jsp"></jsp:include>

		<div class="content-wrapper">

			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>



			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-info">
								<div class="inner">
									<h3>150</h3>

									<p>New Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<h3>
										53<sup style="font-size: 20px">%</sup>
									</h3>

									<p>Bounce Rate</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>44</h3>

									<p>User Registrations</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>65</h3>

									<p>Unique Visitors</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
					</div>
					<!-- /.row -->
					<!-- Main row -->
					<div class="row">
						<!-- Left col -->
						<section class="col-lg-7 connectedSortable ui-sortable">
							<!-- Custom tabs (Charts with tabs)-->
							<div class="card">
								<div class="card-header ui-sortable-handle"
									style="cursor: move;">
									<h3 class="card-title">
										<i class="fas fa-chart-pie mr-1"></i> Sales
									</h3>
									<div class="card-tools">
										<ul class="nav nav-pills ml-auto">
											<li class="nav-item"><a class="nav-link active"
												href="#revenue-chart" data-toggle="tab">Area</a></li>
											<li class="nav-item"><a class="nav-link"
												href="#sales-chart" data-toggle="tab">Donut</a></li>
										</ul>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div class="tab-content p-0">
										<!-- Morris chart - Sales -->
										<div class="chart tab-pane active" id="revenue-chart"
											style="position: relative; height: 300px;">
											<div class="chartjs-size-monitor">
												<div class="chartjs-size-monitor-expand">
													<div class=""></div>
												</div>
												<div class="chartjs-size-monitor-shrink">
													<div class=""></div>
												</div>
											</div>
											<canvas id="revenue-chart-canvas" height="375"
												style="height: 300px; display: block; width: 676px;"
												width="845" class="chartjs-render-monitor"></canvas>
										</div>
										<div class="chart tab-pane" id="sales-chart"
											style="position: relative; height: 300px;">
											<canvas id="sales-chart-canvas" height="0"
												style="height: 0px; display: block; width: 0px;" width="0"
												class="chartjs-render-monitor"></canvas>
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->

							<!-- DIRECT CHAT -->
							<div class="card direct-chat direct-chat-primary">
								<div class="card-header ui-sortable-handle"
									style="cursor: move;">
									<h3 class="card-title">Direct Chat</h3>

									<div class="card-tools">
										<span title="3 New Messages" class="badge badge-primary">3</span>
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn btn-tool" title="Contacts"
											data-widget="chat-pane-toggle">
											<i class="fas fa-comments"></i>
										</button>
										<button type="button" class="btn btn-tool"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<!-- Conversations are loaded here -->
									<div class="direct-chat-messages">
										<!-- Message. Default to the left -->
										<div class="direct-chat-msg">
											<div class="direct-chat-infos clearfix">
												<span class="direct-chat-name float-left">Alexander
													Pierce</span> <span class="direct-chat-timestamp float-right">23
													Jan 2:00 pm</span>
											</div>
											<!-- /.direct-chat-infos -->
											<img class="direct-chat-img" src="dist/img/user1-128x128.jpg"
												alt="message user image">
											<!-- /.direct-chat-img -->
											<div class="direct-chat-text">Is this template really
												for free? That's unbelievable!</div>
											<!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

										<!-- Message to the right -->
										<div class="direct-chat-msg right">
											<div class="direct-chat-infos clearfix">
												<span class="direct-chat-name float-right">Sarah
													Bullock</span> <span class="direct-chat-timestamp float-left">23
													Jan 2:05 pm</span>
											</div>
											<!-- /.direct-chat-infos -->
											<img class="direct-chat-img" src="dist/img/user3-128x128.jpg"
												alt="message user image">
											<!-- /.direct-chat-img -->
											<div class="direct-chat-text">You better believe it!</div>
											<!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

										<!-- Message. Default to the left -->
										<div class="direct-chat-msg">
											<div class="direct-chat-infos clearfix">
												<span class="direct-chat-name float-left">Alexander
													Pierce</span> <span class="direct-chat-timestamp float-right">23
													Jan 5:37 pm</span>
											</div>
											<!-- /.direct-chat-infos -->
											<img class="direct-chat-img" src="dist/img/user1-128x128.jpg"
												alt="message user image">
											<!-- /.direct-chat-img -->
											<div class="direct-chat-text">Working with AdminLTE on
												a great new app! Wanna join?</div>
											<!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

										<!-- Message to the right -->
										<div class="direct-chat-msg right">
											<div class="direct-chat-infos clearfix">
												<span class="direct-chat-name float-right">Sarah
													Bullock</span> <span class="direct-chat-timestamp float-left">23
													Jan 6:10 pm</span>
											</div>
											<!-- /.direct-chat-infos -->
											<img class="direct-chat-img" src="dist/img/user3-128x128.jpg"
												alt="message user image">
											<!-- /.direct-chat-img -->
											<div class="direct-chat-text">I would love to.</div>
											<!-- /.direct-chat-text -->
										</div>
										<!-- /.direct-chat-msg -->

									</div>
									<!--/.direct-chat-messages-->

									<!-- Contacts are loaded here -->
									<div class="direct-chat-contacts">
										<ul class="contacts-list">
											<li><a href="#"> <img class="contacts-list-img"
													src="dist/img/user1-128x128.jpg" alt="User Avatar">

													<div class="contacts-list-info">
														<span class="contacts-list-name"> Count Dracula <small
															class="contacts-list-date float-right">2/28/2015</small>
														</span> <span class="contacts-list-msg">How have you been?
															I was...</span>
													</div> <!-- /.contacts-list-info -->
											</a></li>
											<!-- End Contact Item -->
											<li><a href="#"> <img class="contacts-list-img"
													src="dist/img/user7-128x128.jpg" alt="User Avatar">

													<div class="contacts-list-info">
														<span class="contacts-list-name"> Sarah Doe <small
															class="contacts-list-date float-right">2/23/2015</small>
														</span> <span class="contacts-list-msg">I will be waiting
															for...</span>
													</div> <!-- /.contacts-list-info -->
											</a></li>
											<!-- End Contact Item -->
											<li><a href="#"> <img class="contacts-list-img"
													src="dist/img/user3-128x128.jpg" alt="User Avatar">

													<div class="contacts-list-info">
														<span class="contacts-list-name"> Nadia Jolie <small
															class="contacts-list-date float-right">2/20/2015</small>
														</span> <span class="contacts-list-msg">I'll call you back
															at...</span>
													</div> <!-- /.contacts-list-info -->
											</a></li>
											<!-- End Contact Item -->
											<li><a href="#"> <img class="contacts-list-img"
													src="dist/img/user5-128x128.jpg" alt="User Avatar">

													<div class="contacts-list-info">
														<span class="contacts-list-name"> Nora S. Vans <small
															class="contacts-list-date float-right">2/10/2015</small>
														</span> <span class="contacts-list-msg">Where is your
															new...</span>
													</div> <!-- /.contacts-list-info -->
											</a></li>
											<!-- End Contact Item -->
											<li><a href="#"> <img class="contacts-list-img"
													src="dist/img/user6-128x128.jpg" alt="User Avatar">

													<div class="contacts-list-info">
														<span class="contacts-list-name"> John K. <small
															class="contacts-list-date float-right">1/27/2015</small>
														</span> <span class="contacts-list-msg">Can I take a look
															at...</span>
													</div> <!-- /.contacts-list-info -->
											</a></li>
											<!-- End Contact Item -->
											<li><a href="#"> <img class="contacts-list-img"
													src="dist/img/user8-128x128.jpg" alt="User Avatar">

													<div class="contacts-list-info">
														<span class="contacts-list-name"> Kenneth M. <small
															class="contacts-list-date float-right">1/4/2015</small>
														</span> <span class="contacts-list-msg">Never mind I
															found...</span>
													</div> <!-- /.contacts-list-info -->
											</a></li>
											<!-- End Contact Item -->
										</ul>
										<!-- /.contacts-list -->
									</div>
									<!-- /.direct-chat-pane -->
								</div>
								<!-- /.card-body -->
								<div class="card-footer">
									<form action="#" method="post">
										<div class="input-group">
											<input type="text" name="message"
												placeholder="Type Message ..." class="form-control">
											<span class="input-group-append">
												<button type="button" class="btn btn-primary">Send</button>
											</span>
										</div>
									</form>
								</div>
								<!-- /.card-footer-->
							</div>
							<!--/.direct-chat -->

							<!-- TO DO List -->
							<div class="card">
								<div class="card-header ui-sortable-handle"
									style="cursor: move;">
									<h3 class="card-title">
										<i class="ion ion-clipboard mr-1"></i> To Do List
									</h3>

									<div class="card-tools">
										<ul class="pagination pagination-sm">
											<li class="page-item"><a href="#" class="page-link">«</a></li>
											<li class="page-item"><a href="#" class="page-link">1</a></li>
											<li class="page-item"><a href="#" class="page-link">2</a></li>
											<li class="page-item"><a href="#" class="page-link">3</a></li>
											<li class="page-item"><a href="#" class="page-link">»</a></li>
										</ul>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<ul class="todo-list ui-sortable" data-widget="todo-list">
										<li>
											<!-- drag handle --> <span class="handle ui-sortable-handle">
												<i class="fas fa-ellipsis-v"></i> <i
												class="fas fa-ellipsis-v"></i>
										</span> <!-- checkbox -->
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="todo1" id="todoCheck1">
												<label for="todoCheck1"></label>
											</div> <!-- todo text --> <span class="text">Design a nice
												theme</span> <!-- Emphasis label --> <small
											class="badge badge-danger"><i class="far fa-clock"></i>
												2 mins</small> <!-- General tools such as edit or delete-->
											<div class="tools">
												<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
											</div>
										</li>
										<li class="done"><span class="handle ui-sortable-handle">
												<i class="fas fa-ellipsis-v"></i> <i
												class="fas fa-ellipsis-v"></i>
										</span>
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="todo2" id="todoCheck2"
													checked=""> <label for="todoCheck2"></label>
											</div> <span class="text">Make the theme responsive</span> <small
											class="badge badge-info"><i class="far fa-clock"></i>
												4 hours</small>
											<div class="tools">
												<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
											</div></li>
										<li><span class="handle ui-sortable-handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span>
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="todo3" id="todoCheck3">
												<label for="todoCheck3"></label>
											</div> <span class="text">Let theme shine like a star</span> <small
											class="badge badge-warning"><i class="far fa-clock"></i>
												1 day</small>
											<div class="tools">
												<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
											</div></li>
										<li><span class="handle ui-sortable-handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span>
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="todo4" id="todoCheck4">
												<label for="todoCheck4"></label>
											</div> <span class="text">Let theme shine like a star</span> <small
											class="badge badge-success"><i class="far fa-clock"></i>
												3 days</small>
											<div class="tools">
												<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
											</div></li>
										<li><span class="handle ui-sortable-handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span>
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="todo5" id="todoCheck5">
												<label for="todoCheck5"></label>
											</div> <span class="text">Check your messages and
												notifications</span> <small class="badge badge-primary"><i
												class="far fa-clock"></i> 1 week</small>
											<div class="tools">
												<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
											</div></li>
										<li><span class="handle ui-sortable-handle"> <i
												class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
										</span>
											<div class="icheck-primary d-inline ml-2">
												<input type="checkbox" value="" name="todo6" id="todoCheck6">
												<label for="todoCheck6"></label>
											</div> <span class="text">Let theme shine like a star</span> <small
											class="badge badge-secondary"><i class="far fa-clock"></i>
												1 month</small>
											<div class="tools">
												<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
											</div></li>
									</ul>
								</div>
								<!-- /.card-body -->
								<div class="card-footer clearfix">
									<button type="button" class="btn btn-primary float-right">
										<i class="fas fa-plus"></i> Add item
									</button>
								</div>
							</div>
							<!-- /.card -->
						</section>
						<!-- /.Left col -->
						<!-- right col (We are only adding the ID to make the widgets sortable)-->

						<!-- right col -->
					</div>
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
			</section>




		</div>
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	</div>
<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>