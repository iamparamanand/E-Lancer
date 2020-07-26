<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>E-Lancer Admin Application</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Le styles -->
    <link href="/admin/js/jquery.waiting/dist/waiting.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-theme.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/Custom-Cs.css" rel="stylesheet" /> 


    <!-- Scripts -->
    <!--[if lt IE 9]><script type="text/javascript" src="/admin/js/html5shiv.js"></script><![endif]-->
    <!--[if lt IE 9]><script type="text/javascript" src="/admin/js/respond.min.js"></script><![endif]-->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.waiting.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container col-md-offset-4 col-xs-4">
               <div class="well well-lg center-block" id="adminlogin">
            <h4>Sign in</h4>
            <form method="post" name="login" class="form-horizontal highlight" id="login">
                <div class="form-group">
                    <label for="username">Username</label><input name="username" id="username" type="text" class="form-control" placeholder="Username" required="required" size="32" value="">
                </div>
                <div class="form-group">
                    <label for="password">Password</label><input name="password" id="password" type="password" class="form-control" placeholder="Password" required="required" size="32" value="">
                </div>
                <input name="submit" type="submit" class="btn btn-primary" id="submitbutton" value="Login">
            </form>
        </div>
    </div>
</body>
</html>
