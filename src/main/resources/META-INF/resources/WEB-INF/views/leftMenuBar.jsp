<%@ page import="com.mbstu.ehcare.Utils" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview menu-open">
                <a href="#">
                    <i class="fa fa-laptop "></i>
                    <span>Administration</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
                        <li><a href="/"><i class="fa fa-fw fa-home text-aqua"></i>Home</a></li>
                        <li><a href="/upsertUser"><i class="fa fa-fw fa-user-plus text-red"></i>Add User</a></li>
                        <li><a href="/userList"><i class="fa fa-fw fa-th-list text-orange"></i>User Information List</a></li>
                    </security:authorize>
                </ul>
            </li>
        </ul>

        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview menu-open">
                <a href="#">
                    <i class="fa fa-user"></i>
                    <span>Patient</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
                        <li><a href="/upsertPatient"><i class="fa fa-fw  fa-user-plus text-red"></i>Create a Patient Profile</a></li>
                        <li><a href="/patientList"><i class="fa fa-fw fa-th-list text-yellow"></i>View Patients List </a></li>
                    </security:authorize>
                </ul>
            </li>
        </ul>
        <security:authorize access="hasAnyRole('ROLE_ADMIN')">
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview menu-open">
                <a href="#">
                    <i class="fa fa-fw fa-th-large"></i>
                    <span>Prescription</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">

                        <li><a href="/addprescribe"><i class="fa fa-fw  fa-medkit text-red"></i>Prescribe New</a></li>
                </ul>
            </li>
        </ul>
        </security:authorize>
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview menu-open">
                <a href="#">
                    <i class="fa fa fa-user "></i>
                    <span>Doctor</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                        <li><a href="/upsertDoctor"><i class="fa fa-fw fa-user-plus text-red"></i>Add a New Doctor</a></li>
                    </security:authorize>
                    <li><a href="/doctorList"><i class="fa fa-fw fa-th-list text-aqua"></i>See Doctor's List</a></li>
                </ul>
            </li>
        </ul>
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview menu-open">
                <a href="#">
                    <i class="fa fa-fw fa-th-large"></i>
                    <span>Badhon</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                        <li><a href="/upsertDonor"><i class="fa fa-fw  fa-user-plus text-red"></i>Add Donor</a></li>
                        <%--<li><a href="/history"><i class="fa fa-fw fa-bar-chart-o text-red"></i>Blood Donation History</a></li>--%>
                    </security:authorize>
                    <li><a href="/brequest"><i class="fa fa-fw fa-medkit text-red"></i>Request For Blood</a></li>
                    <li><a href="/brequestList"><i class="fa fa-fw fa-medkit text-aqua"></i>View Request</a></li>
                    <li><a href="/donorList"><i class="fa fa-fw fa-th-list text-yellow"></i>Donor Information</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>