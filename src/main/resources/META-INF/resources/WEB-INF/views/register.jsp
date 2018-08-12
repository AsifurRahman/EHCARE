<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>EHCare_MBSTU</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">
</head>

<body>

<!-- Masthead -->
<header class="masthead text-white text-left">
    <%--<div class="overlay"></div>--%>

        <div class="register-box">
            <div class="register-logo">
                <center><h3><P style="color:orangered">Register Page</P></h3></center>
            </div>
            <%--<center><h2 style="color:#ff4500;">Register Page</h2></center>--%>
            <%--<a href="/login" class="btn btn-info"> Back to Home Page</a>--%>
            <div class="register-box-body">
                <div class="col-md-6 col-lg-4 col-xl-4 mx-auto">
                <form id="registerForm" action="/register" method="post">
                    <div class="form-group has-feedback">
                        <strong><label>Full Name:</label></strong>
                        <input type="text" name="name" class="form-control" required="true" placeholder="Enter Name">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <strong><label>User Name:</label></strong>
                        <input type="text" name="username" class="form-control" required="true" placeholder="Enter User Name">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <strong><label>E-Mail:</label></strong>
                        <input type="email" name="email" class="form-control" required="true" placeholder="Enter Email">
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <strong><label>User Type:</label></strong>
                        <select id="type" name="type" required="true" tabindex="-1" class="form-control" placeholder="Enter your Details...">
                            <option value="Student">Student</option>
                            <option value="Teacher">Teacher</option>
                            <option value="Officer">Officer</option>
                        </select>
                    </div>
                    <div class="form-group has-feedback">
                        <strong><label>Password:</label></strong>
                        <input type="password" name="password" class="form-control" required="true" placeholder="Enter Password">
                    </div>
                    <div class="form-group">
                        <!-- /.col -->
                        <button type="submit" onclick="alert('Registered Successfully')"class="btn btn-danger btn-block"><strong>Register</strong></button>
                        <!-- /.col -->
                    </div>
                </form>
                    <div class="row">
                        <div class="col-xs-12"></div>
                    </div>
                    <a href="/login" class="btn btn-outline-warning btn-block">I already have a membership</a>
                </div>

            </div>

            </div>
            <!-- /.form-box -->
        </div>
        <!-- /.login-logo -->
        <!-- /.login-box-body -->

    </div>

</header>
<!-- Footer -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
