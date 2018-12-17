<%--
  Created by IntelliJ IDEA.
  User: 黄律
  Date: 2018/12/16
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>联合项目</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="assets/css/demo.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
</head>

<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="index.html"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
        </div>
        <div class="container-fluid">
            <div class="navbar-btn">
                <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
            </div>
            <form class="navbar-form navbar-left">
                <div class="input-group">
                    <input type="text" value="" class="form-control" placeholder="Search dashboard...">
                    <span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
                </div>
            </form>
            <div class="navbar-btn navbar-btn-right">
                <a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
            </div>
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                            <i class="lnr lnr-alarm"></i>
                            <span class="badge bg-danger">5</span>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Basic Use</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png" class="img-circle" alt="Avatar"> <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
                        </ul>
                    </li>
                    <!-- <li>
                        <a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
    <!-- END NAVBAR -->
    <!-- LEFT SIDEBAR -->
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li><a href="/ssmunion/users" class="active"><i class="lnr lnr-home"></i> <span>用户管理</span></a></li>
                    <li><a href="/ssmunion/users" ><i class="lnr lnr-home"></i> <span>订单管理</span></a></li>
                    <li><a href="/ssmunion/users" ><i class="lnr lnr-home"></i> <span>商品管理</span></a></li>
                    <li><a href="/ssmunion/users" ><i class="lnr lnr-home"></i> <span>员工管理</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <!-- OVERVIEW -->
                <div class="panel panel-headline">

                    <div class="panel-body">

                        <%--哈哈--%>
                            <div class="row wrapper border-bottom white-bg page-heading">
                                <div class="col-lg-12">
                                    <h2>商城用户管理系统</h2>
                                </div>
                            </div>
                            <div class="wrapper wrapper-content animated fadeInRight">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="ibox float-e-margins">
                                            <div class="ibox-title">
                                                <h5>用户管理</h5>
                                            </div>
                                            <div class="ibox-content">
                                                <%--搜索框--%>
                                                <div class="search-form">
                                                    <form action="seachUser" method="get">
                                                        <div class="input-group">
                                                            <input type="text" placeholder="请输入用户姓名" name="search" class="form-control input-lg" value="${msg}">
                                                            <div class="input-group-btn">
                                                                <button class="btn btn-lg btn-primary" type="submit">
                                                                    搜索
                                                                </button>
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div>

                                                <table class="footable table table-stripped" data-page-size="12" data-filter=#filter id="mytable">
                                                    <thead>
                                                    <tr>
                                                        <th>用户ID</th>
                                                        <th>姓名</th>
                                                        <th data-hide="phone,tablet">性别</th>
                                                        <th data-hide="phone,tablet">年龄</th>
                                                        <th data-hide="phone,tablet">会员</th>
                                                        <th data-hide="phone,tablet">操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${page.list}" var="p">
                                                        <tr class="gradeX">
                                                            <td>${p.uid}</td>
                                                            <td>
                                                                ${p.uname}
                                                            </td>
                                                            <td>${p.usex}</td>
                                                            <td>${p.uage}</td>
                                                            <td class="center">${p.uvip}</td>
                                                            <td class="center">
                                                                <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editUser(${p.uid})">修改</a>
                                                                <a href="#" class="btn btn-danger btn-xs" onclick="deleteUser(${p.uid})">删除</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>


                                                    </tbody>
                                                    <tfoot>
                                                    <tr>
                                                        <td colspan="3">
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#studentAdd">新增</button>
                                                        </td>

                                                        <td colspan="5">
                                                            <ul class="pagination pull-right"></ul>
                                                        </td>
                                                    </tr>
                                                    </tfoot>
                                                </table>

                                                <%--style="position: absolute;left: 720px;top: 880px;"--%>
                                                <div >
                                                    <%@ include file="pageFile.jsp" %>
                                                </div>
                                            </div>

                                            <!-- 用户编辑对话框 -->
                                            <div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
                                                        </div>
                                                        <form class="form-horizontal" id="edit_Student_form" method="post" action="updateUser">
                                                            <div class="modal-body">
                                                                <input  type="hidden" id="edit_userId" name="uid" value="${user.uid}" />
                                                                <div class="form-group">
                                                                    <label for="edit_userName" class="col-sm-2 control-label" >姓   名</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_userName" placeholder="姓名" name="uname" value="${user.uname}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userSex" class="col-sm-2 control-label">性  别</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_userSex" placeholder="性别" name="usex" value="${user.usex}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userAge" class="col-sm-2 control-label">年  龄</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_userAge" placeholder="年龄" name="uage" value="${user.uage}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userAge" class="col-sm-2 control-label">会  员</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_userVip" placeholder="会员" name="uvip" value="${user.uvip}">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                                <button type="submit" class="btn btn-info">确定</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- 新增学生对话框 -->
                                            <div class="modal fade" id="studentAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalStudent">请输入新增用户信息</h4>
                                                        </div>
                                                        <form class="form-horizontal" id="add_Student_form" method="post" action="addUser">
                                                            <div class="modal-body">
                                                                <div class="form-group">
                                                                    <label for="edit_userName" class="col-sm-2 control-label" >姓   名</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_userName" placeholder="姓名" name="uname" >
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userSex" class="col-sm-2 control-label">性  别</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_userSex" placeholder="性别" name="usex" >
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userAge" class="col-sm-2 control-label">年  龄</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_userAge" placeholder="年龄" name="uage" >
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userAge" class="col-sm-2 control-label">会  员</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_userVip" placeholder="会员" name="uvip" >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                                <button type="submit" class="btn btn-info">确定</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                </div>
                <!-- END OVERVIEW -->

        <!-- END MAIN CONTENT -->
    </div>
    <!-- END MAIN -->
    <div class="clearfix"></div>

</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="assets/vendor/chartist/js/chartist.min.js"></script>
<script src="assets/scripts/klorofil-common.js"></script>

</body>
<script>
    function editUser(uid) {
        $.ajax({
            type:"get",
            url:"/ssmunion/editUser",
            data:{"uid":uid},
            success:function (data) {
                $("#edit_userId").val(data.uid);
                $("#edit_userName").val(data.uname);
                $("#edit_userSex").val(data.usex);
                $("#edit_userAge").val(data.uage);
                $("#edit_userVip").val(data.uvip);
            },
        });
    }
    function deleteUser(uid) {
        $.ajax({
            type: "get",
            url: "deleteUser",
            data:{"uid":uid},
            success:function () {
                window.location.reload();
            }
        });
    }
</script>

</html>

