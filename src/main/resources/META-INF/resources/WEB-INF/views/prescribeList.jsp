<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>

    <style type="text/css">
        table#prescribeTable {
            border-collapse: collapse;
        }
        #prescribeTable tr {
            background-color: bisque;
            border-top: 1px solid #fff;
        }
        #prescribeTable tr:hover {
            background-color: aqua;
        }
        #prescribeTable th {
            background-color: #fff;
        }
        #prescribeTable th, #prescribeTable td {
            padding: auto auto;
        }
        #prescribeTable td:hover {
            cursor: pointer;
        }
    </style>

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
                Prescribe's Information
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
                                    <div class="col-sm-12">
                                        <table id="prescribeTable" class="table table-striped table-dark">
                                            <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>Patient_Name</th>
                                                <th>Patient_Id</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${prescribeList}" var="ps" varStatus="status">
                                                <tr class='clickable-row' data-href='./upsertPatient?patientId=${ps.pid}'>
                                                    <td>${status.index+1}</td>
                                                    <td>${ps.name}</td>
                                                    <td>${ps.pid}</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
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
    // $("#prescribeTable").dataTable();
    $(document).ready( function () {
        var table = $('#prescribeTable').DataTable({
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ]
        });
    } );
</script>

<script>
    jQuery(document).ready(function($) {
        $(".clickable-row").click(function() {
            window.location = $(this).data("href");
        });
    });

</script>



</body>
</html>


