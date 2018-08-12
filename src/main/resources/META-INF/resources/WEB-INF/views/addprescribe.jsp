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

<body class="hold-transition skin-red sidebar-mini">
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
                Prescription Form
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-lg-7">
                    <form:form id="prescriptionForm"  commandName="patientDetails" method="post">
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title"></h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <!-- text input -->
                                <div class="form-group">
                                    <label>Patient ID: </label>
                                    <form:input path="ptid" required="true"  placeholder="Enter Patient Id..."/>
                                </div>
                                <div class="form-group">
                                    <label>Symtomp</label>
                                    <form:textarea path="symptom"  rows="3" class="form-control" required="true" placeholder="Enter Symptom:" />
                                </div>

                                <div class="form-group">
                                    <label>Prescribe Medicine/Rx:</label>
                                    <form:textarea path="prescription" rows="6" class="form-control"  required="true"  placeholder="Enter medicine/Rx:" />
                                </div>
                                <div class="box-header">
                                    <button type="submit" onclick="alert('Saved Successfully')" class="btn btn-info btn-block">Save</button>
                                </div>
                            </div>
                            <!-- /.box-body -->

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

</body>
</html>




