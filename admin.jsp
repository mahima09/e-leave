<html lang="en" ng-app="leaveSysApp">
<head>
	<title>leave management system</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="admin.css">
	<script src="angular.min.js"></script>
	<!-- // <script src="https://code.angularjs.org/1.6.9/angular-route.js"></script> -->
</head>
<body id="app1">
<!-- everything of a specific page (route) will be shown inside  ng-view -->
	<!-- <div ng-view> </div> -->
	<div class="main1">
	  <nav class="navbar navbar-default navbar-fixed">
	          <div class="container-fluid">
	              <div class="navbar-header">
	                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#user-navbar" aria-expanded="false">
	                      <span class="sr-only">Toggle navigation</span>
	                      <span class="icon-bar"></span>
	                      <span class="icon-bar"></span>
	                      <span class="icon-bar"></span>
	                  </button>
	                  <a class="navbar-brand" href="#">ITS</a>
	              </div>
	              <div class="collapse navbar-collapse" id="user-navbar">
	                  <ul class="nav navbar-nav navbar-right">
	                      <!-- <li><a href="#">About</a></li>
	                      <li><a href="#">Sign-up</a></li>
	                      <li><a href="#">Setting</a></li> -->
	                      <li></li>
	                      <li></li>
	                      <li></li>
	                      <!-- <button type="submit" class="btn btn-default btn-lg" id="user-button" >sign-up</button> -->
	                  </ul>
	              </div>
	              <!-- /.navbar-collapse -->
	          </div>
	          <!-- /.container-fluid -->
	      </nav>


	<div class="container-fluid" id="wrapper1">
	  <header></header>
	      <div class="row">
	        <div class="col-md-2">
	          <div id="menu1">
	            <div class="circle">
			       <!-- User Profile Image -->
			       <img class="profile-pic" src="F:\\Acadview\\projects\\e-leave\\WebContent\\images\\its.jpg">

			       <!-- Default Image -->
			       <!-- <i class="fa fa-user fa-5x"></i> -->
			     </div>
			     <div class="p-image">
			       <i class="fa fa-camera upload-button"></i>
			        <input class="file-upload" type="file" accept="image/*"/>
			     </div>
			     <div id="name"><strong></strong></div>
	            <div id="welcome"><strong>welcome!</strong></div>
	            <button class="btn btn-success btn-block btn1" id="btn">Approved leave</button>
	            

	          </div>
	        </div>
	        <div class="col-md-10" style="padding-left: 0px;">
	          	<div id="display1">
				            <div class="start">
				              <h1>Hi,</h1>
				              <h2>we are glad you have stated with </h2>
				              <h2>Leave Management System </h3>
				            </div>
							
							<div class="status hidden" ng-controller="statusController">
							  <div class="short-sub table-responsive">
							    	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
									    pageEncoding="ISO-8859-1"
									     import="java.sql.*"%>
										<table class="table table-hover " id="history1">
										<thead>
								        <tr>
								          <th>subject</th>
								          <th>reason</th>
								          <th>date_from</th>
								          <th>date_to</th>
								          <th>leave_request</th>
								        </tr>
								      </thead>
									   <%
									   try
									    {
									    Class.forName("com.mysql.jdbc.Driver");
									    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/e-leave","root","");
									    Statement st=cn.createStatement();
									    
									  	String seachQuery="SELECT * FROM index_table";
									 	ResultSet rs=st.executeQuery(seachQuery);
										while(rs.next())
									    {
									    %>
									  <tbody>
									    <tr class="item">
									
										<td><%=rs.getString("subject") %></td>
										<td><%=rs.getString("reason") %></td>
										<td><%=rs.getString("date_from") %></td>
										<td><%=rs.getString("date_to") %></td>
										<td><%=rs.getString("leave_request") %></td>
										
										</tr>
									    <%
									    }
									    }
									    catch(Exception e)
									    {
									    out.print(""+e.getMessage());
									    }
									    %>
									    </tbody>
									</table>
									 
  
   

							        <!-- <tr ng-repeat="status in leave_status" class="item">
							          <td>{{status.num}}</td>
							          <td>{{status.sub}}</td>
							          <td>{{status.status}}</td>
							          <td>{{status.date}}</td>
							        </tr> -->

							      
							   
							  </div>
							</div>
							<!-- status code completed -->
							<div class="leave-approved hidden">
									<div class="start1">
						              <h2>Leave approved </h2>
						              <h2><!-- name --></h3>
					            	</div>
					            	<form action="admin_jdbc.jsp" method="post">
	     
					            	<div class="apply">
								  		<div class="form-group t1">
										    <label for="message">Message</label>
										    <textarea class="form-control" rows="5" id="message" placeholder="enter message " name="ta-message"></textarea>
								  		</div>
									</div>
									<!-- <div class="apply ">
								  		<div class="form-group t2">
										    <label for="message">Reason</label>
										    <textarea class="form-control" rows="5" id="reason" placeholder="enter message " name="ta-reason"></textarea>
								  		</div>
									</div> -->
									<div class="radio">
									  <div>
									      <label><strong>leave Approved</strong></label>
									    </div>
									    <div class="apply">
									      <label><input type="radio" id="Leave-requested" name="r-requested" value="Approved">Approved</label>
									    </div>
									    <div class="apply">
									      <label><input type="radio" id="Leave-requested" name="r-requested" value="Unapproved">Unapproved</label>
									  </div>
									</div>
									<div class="submit">
									    <button class="btn btn-default btn-lg" ><strong>Submit leave application</strong></button>
									  </div>
									</form>
								</div>
							</div>



	          </div>
	          <!-- display closed -->
	      </div>
	      <!-- row closed -->
	    <footer></footer>
	  </div>
	</div>



	<script src="jquery.js"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<!-- java script code -->
	<script src="js/bootstrap.min.js"></script>
    <script src="leave_script.js"></script>
</body>
</html>
