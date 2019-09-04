<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

	if(session.getAttribute("email_id") == null){
		response.sendRedirect("login_required.jsp");
	}
	if(session.getAttribute("member_type") == "Applicant"){
		response.sendRedirect("unauthorized_access.jsp");
	}

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Placement Automation Portal</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE = edge">
    <meta name="viewport" content="width = device-width, initial-scale = 1">

  
    <style type="text/css">
        nav.navbar{
            border-radius: 0px;
            background-color: black;
            color: white;
        }
        body{
            background-color: lightgrey;
        }
        .jumbotron{
            background-color: lightgrey;
        }
        .bottom_ul { list-style-type:none; float:right; margin-bottom:0px;}
        .bottom_ul li { float:left; line-height:40px;}
        .bottom_ul li:after { content:"/"; color:#FFF; margin-right:8px; margin-left:8px;}
        .bottom_ul li a { color:#FFF;  font-size:12px;}
        
        #job_posting{
            text-align: left;
            padding-left: 10%;
            margin-bottom: 2%;
        }
    </style>

    <!-- Bootstrap scripts -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <!-- Custom script as written on bootstrap page -->
    
    <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    
    
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="color: white">UPES</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <!--  <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" style="border-radius: 2px">
        </div>
        <button type="submit" class="btn btn-default" style="border-radius: 2px">Submit</button>
      </form>-->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="employer_home_page.jsp">Home</a></li>
        <li><a href="#">Jobs Posted</a></li>
		<li><a href="#">Account</a></li>
		<li><a href="logout.jsp">Logout</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

    
<!-- Job posting form-->
<div id="job_posting">

        <form id="posting" method="POST" action="JobPosting">
        	<%
        		request.setAttribute("emp_id", session.getAttribute("email_id"));
        	%>
          <label>Employee Id</label><br>
          <input type="text" name="emp_id" value=<%=session.getAttribute("email_id") %> id="emp_id" size="60px" readonly="readonly"><br>
          <br>
          
          <label>Job Title</label><br>
          <input type="text" name="job_title" id="job_title" size="60px" ><br>
          <br>
          <label>Job Description</label><br>
            <textarea name="job_description" id="job_description" rows="4" cols="62"></textarea><br>
          <br>
          
          <label>Company</label><br>
          <input type="text" name="company" id="company" size="60px" ><br>
          <br>
          
          <label>Location</label><br>
          <input type="text" name="location" id="location" size="60px" ><br>
          <br>
          
          <label>Deadline for application</label><br>
          <input type="text" name="application_deadline" id="application_deadline"><br>
          <br>
          <button name="submit" type="submit" class="btn btn-primary">Submit</button>
        </form>

</div>


<footer>
<div class="copyright" style="min-height:40px; background-color:#000000;">
  <div class="container">
    <div class="col-md-6">
      <p style="text-align:left; color:#FFF; padding:10px 0; margin-bottom:0px;">© UPES -2019</p>
    </div>
    <div class="col-md-6">
      <ul class="bottom_ul">
      
      </ul>
    </div>
  </div>
</div>
</footer>
</body>
</html>