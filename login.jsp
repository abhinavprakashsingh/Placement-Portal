<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE = edge">
    <meta name="viewport" content="width = device-width, initial-scale = 1">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style type="text/css">
        .navbar{
            border-radius: 0;
            margin-bottom: 0px;
        }
        body{
            background-color: lightgrey;
        }
        .jumbotron-primary{
          margin-top: 30px;
          background-color:#3498db;
          background-image: url("https://i.imgur.com/2o6cukD.png"),
        linear-gradient(165deg,
        rgba(255, 255, 255, 0),
        rgba(255, 255, 255, 0) 65%, rgba(38, 38, 38, 0.1) 65.1%,
        rgba(38, 38, 38, 0.1));
                color:#ffffff;
            }
          #login_form{
            margin: 0px 10px;
            color: black;
            margin-top: 0px;
          }
        
        .bottom_ul { list-style-type:none; float:right; margin-bottom:0px;}
        .bottom_ul li { float:left; line-height:40px;}
        .bottom_ul li:after { content:"/"; color:#FFF; margin-right:8px; margin-left:8px;}
        .bottom_ul li a { color:#FFF;  font-size:12px;}
    </style>
    
    <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
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
  </div><!-- /.container-fluid -->
</nav>

<div class="jumbotron jumbotron-primary">
<div class="container" style="max-width: 360px;">
<div class="panel panel-primary">
        <div class="panel-body">
          <form id="login_form" name="login_form" action="Login" method="POST" role="form">
            <div class="form-group">
              <h3 style="text-align: center;">Login to your account</h3><hr>
            </div>
            <div class="form-group">
              <label class="control-label" for="signinEmail">Email</label>
              <input id="signinEmail" name="signinEmail" type="email" maxlength="50" class="form-control" required>
            </div>
            <div class="form-group">
              <label class="control-label" for="signinPassword">Password</label>
              <input id="signinPassword" name="signinPassword" type="password" class="form-control" required>
            </div>
          
            <div class="form-group">
              <input id="signinSubmit" type="submit" name="submit" value="Login" class="btn btn-info btn-block">
            </div>
            
          </form>
          </div>
          </div>
        
</div>
</div>


<footer style="margin-top: 0px;">
<div class="copyright" style="min-height:40px; background-color:#000000;">
  <div class="container">
    <div class="col-md-6">
      <p style="text-align:left; color:#FFF; padding:10px 0; margin-bottom:0px;">&copy; UPES -2019</p>
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
