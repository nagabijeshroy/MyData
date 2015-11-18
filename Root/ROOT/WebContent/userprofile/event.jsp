<%@page import="com.triveni.beans.EventBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TRIVENI - UNC Charlotte Indian Students Organization</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
       <jsp:include page="sidebar.jsp"></jsp:include>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Events</h1>
                        <%
						ArrayList<EventBean> eventBeans = (ArrayList<EventBean>) session.getAttribute("eventDetails");
						if(eventBeans != null){
						%>
						<div class="table-responsive"> 
					        <table class="table table-bordered">
					            <thead>
					                <tr>
					                    <th>Event Id</th>
					                    <th>Event Name</th>
					                    <th>Event Date<br />(YYYY-MM-DD)</th>
					                    <th>Event Time<br />(24 hour)</th>
					                    <th>Description</th>
					                    <th>Venue</th>
					                </tr>
					            </thead>
					            <tbody>
					            <%
					            int i=0;
					            for(EventBean eventBean : eventBeans){
					            %>
					            	<tr>
						            	<td><%=++i %></td>
						            	<td><%=eventBean.getEventName() %></td>
						            	<td><%=eventBean.getEventDate() %></td>
						            	<td><%=eventBean.getEventTime() %></td>
						            	<td><%=eventBean.getEventDescription() %></td>
						            	<td><%=eventBean.getVenue() %></td>
					            	<tr>
					            <% } %>
					    		</tbody>
					    	</table>
					    </div>
					    <% } %>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Menu</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
