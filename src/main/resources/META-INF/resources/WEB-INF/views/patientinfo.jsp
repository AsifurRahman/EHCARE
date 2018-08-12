<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
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
                Patient's Information
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
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                                <div class="row">
                                    <div class="col-md-4">
                                    </div>
                                    <div class="col-md-4">
                                        <table class="table table-bordered" id="infopatient">
                                            <center><h4 style="background:lightcoral"><strong>Patient Profile</strong></h4></center>
                                            <tbody style="background:cornsilk">
                                            <tr style="background:turquoise">
                                                <td>Name:</td>
                                                <td>${patientx.name}</td>
                                            </tr>
                                            <tr>
                                                <td>ID No:</td>
                                                <td>${patientx.pid}</td>
                                            </tr>
                                            <tr style="background:turquoise">
                                                <td>Phone No:</td>
                                                <td>${patientx.phone}</td>
                                            </tr>
                                            <tr>
                                                <td>B-Group:</td>
                                                <td>${patientx.bgroup}</td>
                                            </tr>
                                            <tr style="background:turquoise">
                                                <td>Department:</td>
                                                <td>${patientx.dept}</td>
                                            </tr>
                                            <tr>
                                                <td>District:</td>
                                                <td>${patientx.district}</td>
                                            </tr>
                                            <tr style="background:turquoise">
                                                <td>Email:</td>
                                                <td>${patientx.email}</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-4">
                                    </div>
                                </div>

                                <div class="row">'
                                    <div class="col-sm-12">
                                        <table id="patientdetailsinfo" class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>Date</th>
                                                <th>Symptom:</th>
                                                <th>Medicine:Rx</th>
                                                <th>Referred By Dr.</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${patientDetails}" var="pt" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td>${pt.date}</td>
                                                    <td><pre><c:out value="${pt.symptom}"/></pre></td>
                                                    <td><pre><strong><c:out value="${pt.prescription}"/></strong></pre></td>
                                                    <td><strong>${pt.refby}</strong></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <a class="btn btn-warning btn-block btn-lg" href="./prescribe?patientId=${patientx.pid}"><strong>Prescribe Now!</strong></a>
                            </div>
                        </div>
                    </div>
                </div>
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

    $(document).ready( function (){
        var table = $('#patientdetailsinfo').DataTable({
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ]
        });
    } );

</script>

</body>
</html>

