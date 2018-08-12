<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
    <script src="<c:url value="/scripts/jquery.validate.js"/>"></script>
</head>
<body class="hold-transition skin-purple sidebar-mini">
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
                Doctor's Form
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-8">
                    <form:form id="doctorForm"  commandName="user" method="post">
                        <form:hidden path="id"/>
                        <form:hidden path="role"/>
                        <form:hidden path="type"/>
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title"></h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <p>*Field Must(3 Character required atleast)</p>
                                <!-- text input -->
                                <div class="form-group">
                                    <label>Name</label>
                                    <form:input path="name" required="true" class="form-control" placeholder="Enter your Full Name..."/>
                                </div>

                                <div class="form-group">
                                    <label>User Name*</label>
                                    <form:input path="username" required="true"  minlength="3" class="form-control" placeholder="Enter your User Name..."/>
                                </div>

                                <div class="form-group">
                                    <label>Password*</label>
                                    <form:password path="password" required="true"  minlength="3" class="form-control" placeholder="Enter your Password..."/>
                                </div>
                                <div class="form-group">
                                    <label>Phone No</label>
                                    <form:input path="contact" required="true" class="form-control" placeholder="Enter your Mobile..."/>
                                </div>
                                <div class="form-group">
                                    <label>Specialized In</label>
                                    <form:input path="splzdin" required="true" class="form-control" placeholder="Enter your Full Name..."/>
                                </div>
                                <div class="form-group">
                                    <label>E-mail*</label>
                                    <form:input path="email" required="true"  class="form-control" placeholder="Enter your Email Address..."/>
                                </div>
                                <div class="form-group">
                                    <label>Enabled </label>
                                    <form:checkbox path="enabled"/>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" onclick="alert('Submitted Successfully')" class="btn btn-info btn-block">Submit</button>
                            </div>
                        </div>
                    </form:form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!-- thisis footer -->
    <%@ include file="/WEB-INF/views/footer.jsp" %>

    <!-- Control Sidebar -->
    <%--<%@ include file="/WEB-INF/views/settings.jsp" %>--%>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->
<script>
    $(document).ready(function(){
    });
</script>

<script>
    $("#doctorForm").validate();
</script>

</body>
</html>




