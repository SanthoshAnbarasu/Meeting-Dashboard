<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Dashboard.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	href="https://unpkg.com/@coreui/coreui/dist/css/coreui.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/@popperjs/core@2"></script>
<script src="https://unpkg.com/@coreui/coreui/dist/js/coreui.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-calendar/0.2.5/js/calendar.min.js"></script>
<script
	src="https://unpkg.com/@coreui/coreui/dist/js/coreui.bundle.min.js"></script>
<script src="vendor/animsition/js/animsition.min.js"></script>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('txt').innerHTML = today;
		var t = setTimeout(startTime, 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i
		}
		; // add zero in front of numbers < 10
		return i;
	}
</script>
</head>
<body onload="startTime()">
	<%
		if (session.getAttribute("str1") == null) {
		response.sendRedirect("index.jsp");

	}
	%>
	<div>
		<nav class="sticky-top flex-md-nowrap p-0 shadow">
			<ul class="navbar-nav px-9"">
				<li class="nav-item text-nowrap" wfd-id="23" id="txt" align="center"><a
					class="nav-lnk" href="index.jsp">Sign out</a></li>
				<span class="nav-item text-nowrap" wfd-id="23" align="right"><a
					class="nav-lnk" href="index.jsp">Sign out</a></span>
				<h6>
					Vsoft Meeting
					</h7>
			</ul>

		</nav>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h7 class="modal-title" id="exampleModalLabel">Enter the
					Project Details</h7>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="NewProject" ,method="get">
						<input type="number" id="title" name="number" value="John"><br>
						<label for="fname">Title</label><br> <input type="text"
							id="title" name="title" value="John"><br> <label
							for="lname">Description</label><br>
						<Textarea type="text" id="Desc" name="Desc" value="Doe" rows="2"></Textarea>
						<br> <label for="fname">Assigne</label><br> <input
							type="text" id="assign" name="Assigne" value="@gmail.com"><br>
						<br> <label for="fname">P_owner</label><br> <input
							type="text" id="assign" name="owner" value=""><br> <br>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-success">Create</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="issue" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h7 class="modal-title" id="exampleModalLabel">Issues</h7>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<label for="fname">Title</label><br> <input type="text"
							id="title" name="title" value="John"><br> <label
							for="lname">Issue type</label><br>
						<Textarea type="text" id="Desc" name="Desc" value="Doe" rows="2"></Textarea>
						<br> <label for="fname">Assigne</label><br> <input
							type="text" id="assign" name="Assigne" value="@gmail.com"><br>
						<br>

						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success">Create</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="team" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h7 class="modal-title" id="exampleModalLabel">Event</h7>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="pp">
						<label for="text">Title </label> <input type="text" name="H"
							id="T"><br> <input type="datetime-local" name="DT"
							placeholder="Select time" id="TT"></input><br> <label
							for="text">Team</label> <input type="text" name="Assi"
							placeholder="Mail id with comma" id="A"><br>

						<button type="button" class="btn btn-success" id="trigger">create</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">cancel</button>
						<script>
							$(function() {
								$("#trigger")
										.on(
												"click",
												function() {
													var $gt = $("#TT");
													var $title = $("#T");
													var $assi = $("#A");
													/* var $alarm=new Date("#TT");
													var $in_date=alarm.getDate();
													var $in_min=alarm.getMinutes();
													var $in_hour=alarm.getHours(); */
													$
															.ajax({
																type : "POST",
																url : "http://localhost:8080/sDFG/EventUpdate",
																data : {
																	gt : $gt
																			.val(),
																	title : $title
																			.val(),
																	assi : $assi
																			.val(),
																/* in_date :$in_date.val(),
																in_min : $in_min.val(),
																in_hour : $in_hour.val(), */
																},
																success : function(
																		set) {
																	// re-direct to next page
																	console
																			.log("Success");
																	window.location.href = "http://localhost:8080/sDFG/test.jsp";
																},
																error : function() {

																	console
																			.log("Error");

																},
															});
												});
							});
							/* function trigger_mail(){
									var gt=document.getElementById('TT').value;
									var alarm=new Date(gt);
									var in_min=alarm.getMinutes();
									var in_hour=alarm.getHours();
								/* var alarmTime=new Date(alarm.getUTCFullYear(),alarm.getUTCMonth(),alarm.getUTCDate(),alarm.getUTCHours(),alarm.getUTCMinutes(),alarm.getUTCSeconds());
								var diff=alarmTime.getTime()-(new Date()).getTime();
								console.log(alarm); */
							/* while(1){
							  	var d = new Date();
								var loc_Min=d.getMinutes();
								var loc_Hour=d.getHours();
							
								if(in_min==loc_Min && in_hour==loc_Hour){
							  		console.log("Welcome");
							  		var xhr = new XMLHttpRequest();
							  	    xhr.onreadystatechange = function() {
							  	        if (xhr.readyState == 4) {
							  	            var data = xhr.responseText;
							  	            alert(data);
							  	        }
							  	    }
							  	    xhr.open('GET', 'http://localhost:8080/sDFG/EventUpdate', true);
							  	    xhr.send(null);
							  		break;
								}
							}
							}; */
						</script>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid " wfd-id="1">
		<div class="row">
			<div class="col-3">
				<div class="nav flex-column nav-pills" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
						href="#Dash" role="tab" aria-controls="v-pills-home"
						aria-selected="true">Home</a> <a class="nav-link"
						id="v-pills-profile-tab" data-toggle="pill" href="#Team"
						role="tab" aria-controls="v-pills-profile" aria-selected="false">Event</a>
					<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
						href="#Message" role="tab" aria-controls="v-pills-messages"
						aria-selected="false">Messages</a>
				</div>
			</div>
			<div class="col-9">
				<div class="tab-content" id="v-pills-tabContent">
					<!-- Dashboard- -->
					<div class="tab-pane fade show active" id="Dash" role="tabpanel"
						aria-labelledby="v-pills-home-tab">
						<div
							class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"
							wfd-id="3">
							<h6>
								Dashboard
								</h1>
								<div class="btn-group mr-2" wfd-id="9">
									<button type="button" class="btn btn-sm btn-outline-secondary"
										data-toggle="modal" data-target="#exampleModal" wfd-id="28">New
										Project</button>
								</div>
						</div>

						<div class="row" wfd-id="47">
							<div class="col-xl-12 col-lg-18 order-lg-2 order-xl-10 "
								wfd-id="99">
								<h7>Sprint</h7>
								<table class="table table-dark scroll p-0 shadow">
									<tr>
										<th scope="row">#</th>
										<th scope="row">Title</th>
										<th scope="row">Description</th>
										<th scope="row">Assigne</th>
										<th scope="row">P_Owner</th>
									</tr>

									<%
										try {
										Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Student", "root", "root12345");
										String sql = "select * from ProjectDesc";
										Statement st = con.createStatement();
										ResultSet rs = st.executeQuery(sql);
										while (rs.next()) {
									%>
									<tr>
										<td><%=rs.getInt("id")%></td>
										<td><%=rs.getString("Title")%></td>
										<td><%=rs.getString("Descp")%></td>
										<td><%=rs.getString("Assigne")%></td>
										<td><%=rs.getString("P_Owner")%></td>
									</tr>
									<%
										}
									} catch (Exception e) {
									e.printStackTrace();

									}
									%>


								</table>
							</div>
						</div>


					</div>

					<!-- Team- -->
					<div class="tab-pane fade" id="Team" role="tabpanel"
						aria-labelledby="v-pills-profile-tab">

						<div
							class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"
							wfd-id="3">
							<h6>Events</h6>
							<div class="alert alert-info" role="alert">
								<strong>Info! </strong>Reload a Page for Updation of Events 
							</div>
							<div class="btn-group mr-2" wfd-id="9">
								<button type="button" class="btn btn-sm btn-outline-secondary"
									data-toggle="modal" data-target="#team" wfd-id="28"
									align="right">Create Event</button>
							</div>
						</div>
						<div>
							<h6>Upcoming Events</h6>
						</div>
						<table class="table table-bordered">
							<tr>

								<th scope="row">Title</th>
								<th scope="row">Date-Time</th>
							</tr>

							<%
								try {
								Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root12345");
								String sql = "insert into past_t select * from event_table where DT< now();";
								PreparedStatement st1 = con.prepareStatement(sql);
								st1.executeUpdate();
								st1 = con.prepareStatement("delete from event_table where DT < now() ");
								st1.executeUpdate();
								st1 = con.prepareStatement("delete from past_t where DT < now()-interval 1 DAY;");
								st1.executeUpdate();
								sql = "SELECT * FROM event_table WHERE DT ORDER BY DT DESC;";
								/* WHERE DT ORDER BY DT DESC; */
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery(sql);
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("head")%></td>
								<td><%=rs.getString("DT")%></td>

							</tr>
							<%
								}
							} catch (Exception e) {
							e.printStackTrace();

							}
							%>


						</table>
						<div>
							<h6>past Events</h6>
						</div>
						<table class="table table-bordered">
							<tr>

								<th scope="row">Title</th>
								<th scope="row">Date-Time</th>
							</tr>

							<%
								try {
								Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root12345");
								String sql = "SELECT * FROM past_t WHERE DT ORDER BY DT DESC;";
								/* WHERE DT ORDER BY DT DESC; */
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery(sql);
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("head")%></td>
								<td><%=rs.getString("DT")%></td>

							</tr>
							<%
								}
							} catch (Exception e) {
							e.printStackTrace();

							}
							%>


						</table>

					</div>
					<!-- Email- -->
					<div class="tab-pane fade" id="Message" role="tabpanel">
						<section class="wrapper-row">
							<div class="col-md-12">
								<section class="box">
									<h4>Compose</h4>
									<br>
									<form action="ServletDemo">
										<input type="text" class="form-control" name="to"
											placeholder="To"> <br> <input
											class="form-control" type="text" name="sub"
											placeholder="Email Subject"> <br> <input
											class="form-control" type="text" name="mess"
											value="Type Here to Send message"> <br> <input
											type="submit" value="send"></input>

									</form>
								</section>
							</div>
						</section>

					</div>

				</div>
			</div>
		</div>
</body>
</html>