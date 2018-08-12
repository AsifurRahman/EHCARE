<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
    <script src="<c:url value="/scripts/jquery.validate.js"/>"></script>
    <script src="<c:url value="/js/ckeditor.js"/>"></script>

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
                Patient Prescription Information
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-8">
                    <form:form id="prescribeForm" action="/prescribe"  method="post" commandName="patientDetails">
                        <input type="hidden" name="patientId" value="${patientId}"/>
                        <input type="hidden" name="ptid" value="${ptid}"/>
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title"></h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="form-group">
                                <label>Symtomp</label>
                                <form:textarea path="symptom"  rows="3" class="form-control" required="true" placeholder="Enter Symptom:" />
                            </div>

                            <div class="form-group">
                                <label>Prescribe Rx:</label>
                                <form:textarea path="prescription" rows="6" class="form-control"  required="true"  placeholder="Enter Rx" />
                            </div>
                            <div class="form-group">
                                <label>Upload File</label>
                                <input type="file" path="file"  placeholder="Upload file..."/>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" onclick="alert('Saved Successfully')" class="btn btn-info btn-block">Save</button>
                            </div>
                        </div>
                    </form:form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </section>
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