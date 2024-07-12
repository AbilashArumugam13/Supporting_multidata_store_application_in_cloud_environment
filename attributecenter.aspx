﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attributecenter.aspx.cs" Inherits="attributecenter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Supporting Multi data store application with Fine-grained Access Control</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="assets/img/icon.ico" type="image/x-icon"/>

	<!-- Fonts and icons -->
	<script src="assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
	    WebFont.load({
	        google: { "families": ["Lato:300,400,700,900"] },
	        custom: { "families": ["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['assets/css/fonts.min.css'] },
	        active: function () {
	            sessionStorage.fonts = true;
	        }
	    });
	</script>

	<!-- CSS Files -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/atlantis.min.css">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
</head>
<body>
  <form id="form2" runat="server">
	<div class="wrapper">
		<div class="main-header">
			<!-- Logo Header -->
			<div class="logo-header" data-background-color="blue">
				
				<a href="index.html" class="logo" style="color:White">
					Privacy Preserving
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						<i class="icon-menu"></i>
					</span>
				</button>
				<button class="topbar-toggler more"><i class="icon-options-vertical"></i></button>
				<div class="nav-toggle">
					<button class="btn btn-toggle toggle-sidebar">
						<i class="icon-menu"></i>
					</button>
				</div>
			</div>
			<!-- End Logo Header -->

			<!-- Navbar Header -->
			<nav class="navbar navbar-header navbar-expand-lg" data-background-color="blue2">
				
				<div class="container-fluid">
					<div class="collapse" id="search-nav">
						<form class="navbar-left navbar-form nav-search mr-md-3">
							<div class="input-group">
								<div class="input-group-prepend">
									<button type="submit" class="btn btn-search pr-1">
										<i class="fa fa-search search-icon"></i>
									</button>
								</div>
								<input type="text" placeholder="Search ..." class="form-control">
							</div>
						</form>
					</div>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<li class="nav-item toggle-nav-search hidden-caret">
							<a class="nav-link" data-toggle="collapse" href="#search-nav" role="button" aria-expanded="false" aria-controls="search-nav">
								<i class="fa fa-search"></i>
							</a>
						</li>
						<li class="nav-item dropdown hidden-caret">
							<a class="nav-link dropdown-toggle" href="#" id="messageDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-envelope"></i>
							</a>
							<ul class="dropdown-menu messages-notif-box animated fadeIn" aria-labelledby="messageDropdown">
							
								
							</ul>
						</li>
						<li class="nav-item dropdown hidden-caret">
							<a class="nav-link dropdown-toggle" href="#" id="notifDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-bell"></i>
								<span class="notification">4</span>
							</a>
						
						</li>
						<li class="nav-item dropdown hidden-caret">
							<a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false">
								<i class="fas fa-layer-group"></i>
							</a>
							<div class="dropdown-menu quick-actions quick-actions-info animated fadeIn">
								<div class="quick-actions-header">
									<span class="title mb-1">Quick Actions</span>
									<span class="subtitle op-8">Shortcuts</span>
								</div>
								<div class="quick-actions-scroll scrollbar-outer">
									<div class="quick-actions-items">
										<div class="row m-0">
											<a class="col-6 col-md-4 p-0" href="#">
												<div class="quick-actions-item">
													<i class="flaticon-file-1"></i>
													<span class="text">Key Setup</span>
												</div>
											</a>
											<a class="col-6 col-md-4 p-0" href="#">
												<div class="quick-actions-item">
													<i class="flaticon-database"></i>
													<span class="text">Key Extraction</span>
												</div>
											</a>
											
									
										</div>
									</div>
								</div>
							</div>
						</li>
					
					</ul>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>

		<!-- Sidebar -->
		<div class="sidebar sidebar-style-2">			
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					
					<ul class="nav nav-primary">
						<li class="nav-item active">
							<a  href="#dashboard" class="collapsed">
								<i class="fas fa-home"></i>
								<p>Attribute Center</p>
								
							</a>
						
						</li>
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Components</h4>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#base">
								<i class="fas fa-layer-group"></i>
								<p>Keys</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="base">
								<ul class="nav nav-collapse">
									<li>
										<a href="#keysetup">
											<span class="sub-item">Key Setup</span>
										</a>
									</li>
									<li>
										<a href="#TSK">
											<span class="sub-item">TSK Key Extraction</span>
										</a>
									</li>
									
									
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#sidebarLayouts">
								<i class="fas fa-th-list"></i>
								<p>Data User</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="sidebarLayouts">
								<ul class="nav nav-collapse">
									
									<li>
										<a href="#datauser">
											<span class="sub-item">Key Extraction</span>
										</a>
									</li>
									
									
								</ul>
							</div>
						</li>
                        <li class="nav-item">
							<a data-toggle="collapse" href="#forms">
								<i class="fas fa-pen-square"></i>
								<p>Exit</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="forms">
								<ul class="nav nav-collapse">
									<li>
										<a href="home.aspx">
											<span class="sub-item">Logout</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
					
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->

		<div class="main-panel">
       
			<div class="content" id="dashboard">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">Dashboard</h2>
								<h5 class="text-white op-7 mb-2">Supporting Multi data store application</h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="#datauser" class="btn btn-white btn-border btn-round mr-2">View DataUser</a>
								   <asp:Button ID="Button1" runat="server" class="btn btn-secondary btn-round"
                                        Text="Key Setup" onclick="Button1_Click" />
                                
                             
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row mt--2">
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Overall statistics</div>
									<div class="card-category">Total upload file in system</div>
									<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-1"></div>
											<h6 class="fw-bold mt-3 mb-0">View Users</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-2"></div>
											<h6 class="fw-bold mt-3 mb-0">Download User</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-3"></div>
											<h6 class="fw-bold mt-3 mb-0">Files</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">CPU Usage Information </div>
									<div class="row py-3">
										<div class="col-md-4 d-flex flex-column justify-content-around">
											<div>
												<h6 class="fw-bold text-uppercase text-success op-8">Total Occupied GB</h6>
												<h3 class="fw-bold">9.782</h3>
											</div>
											<div>
												<h6 class="fw-bold text-uppercase text-danger op-8">Remaining Spaces</h6>
												<h3 class="fw-bold">1,248</h3>
											</div>
										</div>
										<div class="col-md-8">
											<div id="chart-container">
												<canvas id="totalIncomeChart"></canvas>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				
				
				</div>
			</div>
          	<div class="content" id="keysetup">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
                            <h2 class="text-white pb-2 fw-bold"></h2>
								<h2 class="text-white pb-2 fw-bold">Attribute Center</h2>
								<h5 class="text-white op-7 mb-2">Supporting Multi data store application</h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
							  <asp:Button ID="Button2" runat="server" class="btn btn-secondary btn-round"
                                        Text="Key Setup" onclick="Button1_Click" />
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row mt--2">
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Key Details</div>
									<div class="card-category">Master and Public key </div>
									<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
										<div class="table-responsive">
                                   
										<table class="table table-head-bg-primary table-bordered table-striped table-striped-bg-default mt-3">
										<thead>
											<tr>
										
												<th scope="col">Mater Key</th>
												<th scope="col">Public Key</th>
											
											</tr>
										</thead>
										<tbody>
                                             <%
    
       System.Data.SqlClient.SqlConnection con;
       System.Data.SqlClient.SqlCommand cmd;

       con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.AppSettings["dbconn"]);
        con.Open();
        string n = "";
        string q = "";
        string mtp = "";
                                                 
        string sa = "select * from keys";
           cmd = new System.Data.SqlClient.SqlCommand(sa, con);
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
    if (dr.Read())
    {
        n = dr["n"].ToString();
        q = dr["p"].ToString();
        mtp = dr["mtp"].ToString();
          

                    %>
  <tr>
    <td><%=dr["s"].ToString()%></td>
    <td><%=dr["p"].ToString() %></td>
    </tr>
    <tr>
    <td>
    </td>
   
    <td><%=dr["a"].ToString() %></td>
    </tr>
     <tr>
    <td>
    </td>
   
    <td><%=dr["b"].ToString() %></td>
    </tr>
     <tr>
    <td>
    </td>
   
    <td><%=dr["x1"].ToString() %></td>
    </tr>
     <tr>
    <td>
    </td>
   
    <td><%=dr["y1"].ToString() %></td>
    </tr>
    
                                               <%  }
      dr.Close();
      %> 
											
											
										</tbody>
									</table>
									</div>		</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Parameters</div>
                                    <div class="card-category">Using parameter(L)</div>
							
																			<div class="col-md-12">
											<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
											<div class="table-responsive">
                                   
                                        <table class="table table-head-bg-primary table-bordered  table-striped table-striped-bg-default mt-3">
										<thead>
											<tr>
												<th scope="col">L</th>
												<th scope="col">p</th>
												
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>n</td>
												<td><%=n %></td>
											
											</tr>
                                            <tr>
												<td>q</td>
												<td><%=q %></td>
											
											</tr>
                                            <tr>
												<td>mtp</td>
												<td><%=mtp %></td>
											
											</tr>
											
										</tbody>
									</table>
                                    </div>
									</div>
										</div>
									</div>
								
							</div>
						</div>
					</div>
				
				
				
				</div>
			</div>  	
            <div class="content" id="TSK">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
                            <h2 class="text-white pb-2 fw-bold"></h2>
								<h2 class="text-white pb-2 fw-bold">Attribute Center</h2>
								<h5 class="text-white op-7 mb-2">Supporting Multi data store application</h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								  <asp:Button ID="Button3" runat="server" class="btn btn-secondary btn-round"
                                        Text="TSK Key Extraction" onclick="Button3_Click" />
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row mt--2">
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Key Details</div>
									<div class="card-category">Master and Public key </div>
									<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
	<div class="table-responsive">
                                   
										<table class="table table-head-bg-primary table-bordered table-striped table-striped-bg-default mt-3">
										<thead>
											<tr>
										
												<th scope="col">Mater Key</th>
												<th scope="col">Public Key</th>
											
											</tr>
										</thead>
										<tbody>
                                             <%
    
  

       con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.AppSettings["dbconn"]);
        con.Open();

         sa = "select * from keys";
           cmd = new System.Data.SqlClient.SqlCommand(sa, con);
            dr = cmd.ExecuteReader();
    if (dr.Read())
    {
      

                    %>
  <tr>
    <td><%=dr["s"].ToString()%></td>
    <td><%=dr["p"].ToString() %></td>
    </tr>
    <tr>
    <td>
    </td>
   
    <td><%=dr["a"].ToString() %></td>
    </tr>
     <tr>
    <td>
    </td>
   
    <td><%=dr["b"].ToString() %></td>
    </tr>
     <tr>
    <td>
    </td>
   
    <td><%=dr["x1"].ToString() %></td>
    </tr>
     <tr>
    <td>
    </td>
   
    <td><%=dr["y1"].ToString() %></td>
    </tr>
    
                                               <%  }
      dr.Close();
      %> 
											
											
										</tbody>
									</table>
									</div>
                                    </div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Token generator</div>
                                    <div class="card-category">TSK Key </div>
							
																			<div class="col-md-12">
											<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
											<div class="table-responsive">
                                        <table class="table table-head-bg-primary table-bordered  table-striped table-striped-bg-default mt-3">
										<thead>
											<tr>
												<th scope="col">Private Key</th>
										
												
											</tr>
										</thead>
										<tbody>
											 <%
    
    sa = "select * from TSk";
           cmd = new System.Data.SqlClient.SqlCommand(sa, con);
           dr = cmd.ExecuteReader();
    if (dr.Read())
    {
      

                    %>
  <tr>
    <td><%=dr["x"].ToString()%></td>
    
    </tr>
    <tr>
 
   
    <td><%=dr["y"].ToString() %></td>
    </tr>
     <tr>
  
   
    <td><%=dr["mtp"].ToString() %></td>
    </tr>
    
    
                                               <%  }
      dr.Close();
      %> 
											
										</tbody>
									</table>
                                    </div>
									</div>
										</div>
									</div>
								
							</div>
						</div>
					</div>
				
				
				
				</div>
			</div>  	
              <div class="content" id="datauser">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
                            <h2 class="text-white pb-2 fw-bold"></h2>
								<h2 class="text-white pb-2 fw-bold">Attribute Center</h2>
								<h5 class="text-white op-7 mb-2">Supporting Multi data store application</h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
                              <asp:Button ID="Button4" runat="server" class="btn btn-secondary btn-round"
                                        Text="Data User key Extraction" onclick="Button4_Click" />
								
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row mt--2">
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Data User</div>
									<div class="card-category">Doctor</div>
									<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
										<table class="table table-head-bg-primary table-bordered table-striped table-striped-bg-default mt-3">
										<thead>
											<tr>
										
												<th scope="col">Id</th>
												<th scope="col">Name</th>
                                                <th scope="col">Attribute</th>
                                                <th scope="col">States</th>
											
											</tr>
										</thead>
										<tbody>
                                           <%
    
  

       con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.AppSettings["dbconn"]);
        con.Open();
        string jj="Data user";
         sa = "select * from register where role1='"+jj+"'";
           cmd = new System.Data.SqlClient.SqlCommand(sa, con);
            dr = cmd.ExecuteReader();
            int count = 0;
    while (dr.Read())
    {
        count = count + 1;

                    %>
  <tr>
    <td><%=count%></td>
    <td><%=dr["name"].ToString() %></td>
    <td><%=dr["emailid"].ToString() %></td>
    <td><%=dr["status"].ToString() %></td>
    </tr>
  
    
                                               <%  }
      dr.Close();
      %> 
											
											
										</tbody>
									</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Data User key generator</div>
                                    <div class="card-category">Private Key </div>
							
																			<div class="col-md-12">
											<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
									<div class="table-responsive">
                                    	<table class="table table-head-bg-primary table-bordered  table-striped table-striped-bg-default mt-3">
										<thead>
											<tr>
												<th scope="col">ID</th>
                                                <th scope="col">Attribute</th>
										        <th scope="col">X</th>
                                                <th scope="col">Y</th>
                                                <th scope="col">MTP</th>


												
											</tr>
										</thead>
										<tbody>
											  <%
    
  

       con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.AppSettings["dbconn"]);
        con.Open();
     
         sa = "select * from datausersecrete";
           cmd = new System.Data.SqlClient.SqlCommand(sa, con);
            dr = cmd.ExecuteReader();
            count = 0;
    while (dr.Read())
    {
        count = count + 1;

                    %>
  <tr>
    <td><%=count%></td>
    <td><%=dr["attributename"].ToString()%></td>
    <td><%=dr["x"].ToString() %></td>
    <td><%=dr["y"].ToString() %></td>
     <td><%=dr["mtp"].ToString()%></td>
    
    </tr>
  
    
                                               <%  }
      dr.Close();
      %> 
											
										</tbody>
									</table>
									</div>
                                    </div>
										</div>
									</div>
								
							</div>
						</div>
					</div>
				
				
				
				</div>
			</div>  
		
			
			<footer class="footer"  style="background-color:#0b50a9" >
				<div class="container-fluid">
					<nav class="pull-center">
						<ul class="nav">
							<li class="nav-item" style="color:White">
							
									Supporting Multi data store application
								
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">
									
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">
									
								</a>
							</li>
						</ul>
					</nav>
							
				</div>
			</footer>
		</div>
		
	
	</div>
	<!--   Core JS Files   -->
	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery UI -->
	<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>


	<!-- Chart JS -->
	<script src="assets/js/plugin/chart.js/chart.min.js"></script>

	<!-- jQuery Sparkline -->
	<script src="assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

	<!-- Chart Circle -->
	<script src="assets/js/plugin/chart-circle/circles.min.js"></script>

	<!-- Datatables -->
	<script src="assets/js/plugin/datatables/datatables.min.js"></script>

	<!-- Bootstrap Notify -->
	<script src="assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

	<!-- jQuery Vector Maps -->
	<script src="assets/js/plugin/jqvmap/jquery.vmap.min.js"></script>
	<script src="assets/js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>

	<!-- Sweet Alert -->
	<script src="assets/js/plugin/sweetalert/sweetalert.min.js"></script>

	<!-- Atlantis JS -->
	<script src="assets/js/atlantis.min.js"></script>

	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<script src="assets/js/setting-demo.js"></script>
	<script src="assets/js/demo.js"></script>
	<script>
		Circles.create({
			id:'circles-1',
			radius:45,
			value:60,
			maxValue:100,
			width:7,
			text: 5,
			colors:['#f1f1f1', '#FF9E27'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-2',
			radius:45,
			value:70,
			maxValue:100,
			width:7,
			text: 36,
			colors:['#f1f1f1', '#2BB930'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		Circles.create({
			id:'circles-3',
			radius:45,
			value:40,
			maxValue:100,
			width:7,
			text: 12,
			colors:['#f1f1f1', '#F25961'],
			duration:400,
			wrpClass:'circles-wrp',
			textClass:'circles-text',
			styleWrapper:true,
			styleText:true
		})

		var totalIncomeChart = document.getElementById('totalIncomeChart').getContext('2d');

		var mytotalIncomeChart = new Chart(totalIncomeChart, {
			type: 'bar',
			data: {
				labels: ["S", "M", "T", "W", "T", "F", "S", "S", "M", "T"],
				datasets : [{
					label: "Total Files",
					backgroundColor: '#ff9e27',
					borderColor: 'rgb(23, 125, 255)',
					data: [6, 4, 9, 5, 4, 6, 4, 3, 8, 10],
				}],
			},
			options: {
				responsive: true,
				maintainAspectRatio: false,
				legend: {
					display: false,
				},
				scales: {
					yAxes: [{
						ticks: {
							display: false //this will remove only the label
						},
						gridLines : {
							drawBorder: false,
							display : false
						}
					}],
					xAxes : [ {
						gridLines : {
							drawBorder: false,
							display : false
						}
					}]
				},
			}
		});

		$('#lineChart').sparkline([105,103,123,100,95,105,115], {
			type: 'line',
			height: '70',
			width: '100%',
			lineWidth: '2',
			lineColor: '#ffa534',
			fillColor: 'rgba(255, 165, 52, .14)'
		});
	</script>
    </form>
</body>
</html>