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
                                    <div class="col-sm-12">
                                        <table id="patientTable" class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>Name</th>
                                                <th>Id No.</th>
                                                <th>B-Group</th>
                                                <th>Department</th>
                                                <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                    <th>Contact</th>
                                                </security:authorize>

                                                <%--<th>Email</th>--%>
                                                <th>District</th>
                                                <th>Email</th>
                                                <th>Update/Delete</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${patientList}" var="pt" varStatus="status">
                                                <tr>
                                                    <td>${status.index+1}</td>
                                                    <td>${pt.name}</td>
                                                    <td>${pt.idno}</td>
                                                    <td>${pt.bgroup}</td>
                                                    <td>${pt.dept}</td>
                                                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                        <td>${pt.phone}</td>
                                                    </security:authorize>

                                                    <%--<td>${pt.email}</td>--%>
                                                    <td>${pt.district}</td>
                                                    <td>${pt.email}</td>
                                                    <td>
                                                        <a class="btn btn-warning btn-sm" href="./upsertPatient?patientId=${pt.id}">Update</a>
                                                        <a class="btn btn-danger btn-sm" href="./deletePatient?patientId=${pt.id}">Delete</a>
                                                    </td>
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
    <%@ include file="/WEB-INF/views/settings.jsp" %>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->
<script>
    // $("#patientTable").dataTable();
    $(document).ready( function () {
        var table = $('#patientTable').DataTable({
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ]
        });
    } );
</script>
</body>
</html>