<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/head.jsp" %>
</head>

<body class="hold-transition skin-blue sidebar-mini">
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
                Patient's List
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
                                        <table id="patientTable" class="table table-striped" style="background:mediumspringgreen">
                                            <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th><strong>Patient Name</strong></th>
                                                <th><strong>Patient ID</strong></th>
                                                <th><strong>Patient contact</strong></th>
                                                <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                    <th><strong>Add Prescription</strong></th>
                                                </security:authorize>
                                                <th>See Patient Profile</th>
                                                <%--<th>Edit Paatient</th>--%>
                                                <security:authorize access="hasAnyRole('ROLE_HEAD')">
                                                     <th>Delete Patient</th>
                                                </security:authorize>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${patientList}" var="pt" varStatus="status">
                                                <tr>
                                                    <td><b>${status.index+1}</b></td>
                                                    <td><b>${pt.name}</b></td>
                                                    <td><b>${pt.pid}</b></td>
                                                    <td><b>${pt.phone}</b></td>
                                                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                    <td>
                                                        <a class="btn btn-primary btn-sm btn-block" href="./prescribe?patientId=${pt.pid}"><strong>Prescribe Now!</strong></a>
                                                    </td>
                                                    </security:authorize>

                                                     <td>
                                                         <a class="btn btn-info  btn-sm btn-block" href="./patientinfo?patientId=${pt.pid}"><strong>View Profile</strong></a>
                                                     </td>
                                                    <%--<td>
                                                        <a class="btn btn-warning  btn-sm" href="./updatePatient?patientId=${pt.pid}"><strong>Update</strong></a>
                                                    </td>--%>
                                                    <security:authorize access="hasAnyRole('ROLE_HEAD')">
                                                      <td>
                                                        <a class="btn btn-danger btn-sm " href="./deletePatient?patientId=${pt.pid}">Delete</a>
                                                      </td>
                                                    </security:authorize>
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

