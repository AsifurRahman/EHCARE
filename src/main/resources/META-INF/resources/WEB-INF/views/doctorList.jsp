<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                Doctor's List
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
                                        <table id="userTable" class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>Doctor Name</th>
                                                <th>Contact No.</th>
                                                <th>Username</th>
                                                <th>Specialized In</th>
                                                <th>Email</th>
                                                <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                    <th>Update</th>
                                                </security:authorize>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${doctorList}" var="user" varStatus="status">
                                                <tr>
                                                    <td><strong>${status.index+1}</strong></td>
                                                    <td><strong>${user.name}</strong></td>
                                                    <td><strong>${user.contact}</strong></td>
                                                    <td><strong>${user.username}</strong></td>
                                                    <td><strong>${user.splzdin}</strong></td>
                                                    <td><strong>${user.email}</strong></td>
                                                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                                                        <td>
                                                            <a class="btn btn-warning btn-sm" href="./upsertDoctor?userId=${user.id}">Update</a>
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
    <%--<%@ include file="/WEB-INF/views/settings.jsp" %>--%>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->
<script>
    // $("#donorTable").dataTable();
    $(document).ready( function () {
        var table = $('#userTable').DataTable({
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ]
        });
    } );
</script>
</body>
</html>