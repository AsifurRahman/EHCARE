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
    <title>E-Health Record and Badhon Blood Management System</title>
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
<header class="masthead text-white text-left font-weight-bold">
    <%--<div class="overlay"></div>--%>

    <div class="register-box">
        <div class="login-logo">
            <center><h4><P style="color:#ff4500">বাঁধন</P></h4>
                <h6 class="hp-slogan">একের রক্ত অন্যের জীবন</h6>
                <h6 class="hp-slogan">রক্তই হোক আত্মার বাঁধন</h6>
                <h4>
                    <a style="text-decoration: none; color:aqua">
                        <i class="fa fa-phone"></i>
                        +8801944548934
                    </a>
                </h4>
            </center>
        </div>
        <%--<a href="/login" class="btn btn-info"> Back to Home Page</a>--%>
        <div class="register-box-body">
            <div class="col-md-6 col-lg-4 col-xl-4 mx-auto">
                <form id="brequestForm" action="/brequest" method="post">
                    <div class="form-group has-feedback">
                        <label>Blood Group</label>
                        <select  name="bgroup" Class="form-control" required="true">
                            <option value="A+(A Positive)">A+(Positive)</option>
                            <option value="B+(B Positive)">B+(Positive)</option>
                            <option value="O+(O Positive)">O+(Positive)</option>
                            <option value="AB+(AB Positive)">AB+(Positive)</option>
                            <option value="A-(A Negative)">A-(Negative)</option>
                            <option value="B-(B Negative)">B-(Negative)</option>
                            <option value="O-(O Negative)">O-(Negative)</option>
                            <option value="AB-(AB Negative)">AB-(Negative)</option>
                        </select>
                    </div>
                    <div class="form-group has-feedback">
                        <label>Contact No.</label>
                        <input type="text" name="phone" class="form-control" required="true" placeholder="Enter Phone No.">
                        <%--<span class="glyphicon glyphicon-envelope form-control-feedback"></span>--%>
                    </div>
                    <div class="form-group has-feedback">
                        <label>Where Need Blood??</label>
                        <input type="text" name="location" class="form-control" required="true" placeholder="Enter Location.">
                        <%--<span class="glyphicon glyphicon-envelope form-control-feedback"></span>--%>
                    </div>
                    <button type="submit" class="btn btn-danger btn-block"><strong>Request</strong></button>
                </form>
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
