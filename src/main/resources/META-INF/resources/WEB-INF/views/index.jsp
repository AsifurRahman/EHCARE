<%@ page import="com.mbstu.ehcare.Utils" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
</head>
<body class="hold-transition skin-yellow sidebar-mini">
<div class="wrapper">

    <!-- This is Top menu bar  -->
    <%@ include file="/WEB-INF/views/topMenuBar.jsp" %>
    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="/WEB-INF/views/leftMenuBar.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                My Dashboard
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                        </div>
                        <div class="box-body">
                            <p style="font-style:italic; font-size: x-large; color:#500a6f;" class="text-center">The issue of health-care in our country is paramount.
                                Due to large population in our country people does not
                                meet the proper treatment as the doctors can give little
                                concern to the patients for various reasons. Moreover going
                                to hospital with  previous record hard-copy is bit of trouble
                                and hassles for patients. So we are badly in need an online
                                platform that will solve our time and money for consulting through
                                doctors suggestions and medicines. From that concept we have tried
                                to develop a web application named E-Health Care MBSTU. Our application
                                will give the opportunity to doctor and patient to solve health issues.
                                Patient can see his profile and previous history and also find doctor
                                through the application. Doctor 's can deal with health issue and see
                                previous record of specific patient. Now we have tried to develop the
                                application for only our University members. In near future we will
                                develop the application for large scale of people</p>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /.content -->

    </div>
</div>


</body>
</html>