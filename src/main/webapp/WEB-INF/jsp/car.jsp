<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>购物车</title>
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
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
</head>

<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="#"><img src="assets/img/logo-dark.png" alt="Klorofil Logo"
                                      class="img-responsive logo"></a>
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
                <a class="btn btn-success update-pro"
                   href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro"
                   title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
            </div>
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                            <i class="lnr lnr-alarm"></i>
                            <span class="badge bg-danger">5</span>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space
                                is almost full</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                class="lnr lnr-question-circle"></i> <span>Help</span> <i
                                class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Basic Use</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png"
                                                                                        class="img-circle" alt="Avatar">
                            <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
                    <li><a href="/ssmunion/index1"><i class="lnr lnr-home"></i> <span>用户管理</span></a></li>
                    <li><a href="/ssmunion/order"><i class="lnr lnr-home"></i> <span>订单管理</span></a></li>
                    <li><a href="/ssmunion/product"><i class="lnr lnr-home"></i> <span>商品管理</span></a></li>
                    <li><a href="/ssmunion/staff"><i class="lnr lnr-home"></i> <span>员工管理</span></a></li>
                    <li><a href="/ssmunion/car" class="active"><i class="lnr lnr-home"></i> <span>购物车管理</span></a></li>
                    <li><a href="shouye" ><i class="lnr lnr-home"></i> <span>返回首页</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
    <div class="main">
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid" style="background-color: white">
                <!-- OVERVIEW -->


                    <div class="panel-body">

                        <%--哈哈--%>
                        <div class="row wrapper border-bottom white-bg page-heading">
                            <div class="col-lg-12">
                                <h2>商城购物车管理系统</h2>
                            </div>
                        </div>
                        <div class="wrapper wrapper-content animated fadeInRight">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="ibox float-e-margins">
                                        <div class="ibox-title">
                                            <p><a class="btn btn-primary btn-lg" href="#" role="button">购物车管理</a></p>
                                        </div>
                                        <div class="ibox-content">

                                            <table class="footable table table-stripped" data-page-size="12"
                                                   data-filter=#filter id="tbcar">

                                            </table>
                                            <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#addCarM">新增</button>


                                        </div>

                                        <!-- 购物车修改模态框 -->
                                        <div class="modal fade" id="upCarM" tabindex="-1" role="dialog"
                                             aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
                                                    </div>
                                                    <form class="form-horizontal" id="car_form" method="post"
                                                          action="upCar">
                                                        <div class="modal-body">
                                                            <input type="hidden" id="cid" name="cid" value=""/>
                                                            <div class="form-group">
                                                                <label for="uid"
                                                                       class="col-sm-2 control-label">用户id</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" id="uid"
                                                                           placeholder="用户id" name="uid" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="pid"
                                                                       class="col-sm-2 control-label">商品id</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" id="pid"
                                                                           placeholder="商品id" name="pid" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="count"
                                                                       class="col-sm-2 control-label">商品数量</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" id="count"
                                                                           placeholder="数量" name="count"
                                                                           value="${user.uage}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal">关闭
                                                            </button>
                                                            <button type="submit" class="btn btn-info">确定</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- 新增购物车对话框 -->
                                        <div class="modal fade" id="addCarM" tabindex="-1" role="dialog"
                                             aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <h4 class="modal-title" id="myModalLabe">新增用户信息</h4>
                                                    </div>
                                                    <form class="form-horizontal" id="car_fo" method="post"
                                                          action="car">
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label for="uid"
                                                                       class="col-sm-2 control-label">用户id</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" id="uid1"
                                                                           placeholder="用户id" name="uid" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="pid"
                                                                       class="col-sm-2 control-label">商品id</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" id="pid1"
                                                                           placeholder="商品id" name="pid" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="count"
                                                                       class="col-sm-2 control-label">商品数量</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" class="form-control" id="count1"
                                                                           placeholder="数量" name="count" value="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal">关闭
                                                            </button>
                                                            <button type="submit" class="btn btn-info">确定</button>
                                                        </div>
                                                    </form>
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
                        </div>

                        <!-- END WRAPPER -->
                        <!-- Javascript -->
                        <script src="assets/vendor/jquery/jquery.min.js"></script>
                        <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
                        <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
                        <script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
                        <script src="assets/vendor/chartist/js/chartist.min.js"></script>
                        <script src="assets/scripts/klorofil-common.js"></script>
                        <script type="text/javascript"
                                src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
                        <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>


</body>
<script>
    $(function () {
        function insert() {
            $("#addCarM").modal("show");
        }

        $("#tbcar").bootstrapTable({
            url: "cars",
            method: "post",
            showColumns: true,
            striped: true,
            pagination: true,
            height:500,
            pageNumber: 1,
            pageSize: 3,
            search: true,
            searchOnEnterKey: true,
            sidePagination: 'server',
            columns: [{
                checkbox: true
            }, {
                field: "cid",
                title: "cid"
            }, {
                field: "uid",
                title: "用户id"
            }, {
                field: "pid",
                title: "商品id"
            }, {
                field: "pname",
                title: "商品名称"
            }, {
                field: "pdesc",
                title: "商品介绍"
            }, {
                field: "pimage",
                title: "商品图片",
                formatter: function (e,v,r,i) {
                    return ["<img src='"+r.pimage+"' height='82px' width='82px'/>"].join("");
                }
            },{
                field: "count",
                title: "商品数量"
            },{
                title: '操作',
                align: 'center',
                formatter: function () {
                    return ["<button type='button' class='btn btn-primary' id='upCarbtn'>修改</button>",
                        "<button type='button' class='btn btn-danger' id='delCarbtn'>删除</button>"].join("");
                },
                events: window.operateEvents = {
                    "click #upCarbtn": function (e, v, r, i) {
                        $.ajax({
                            url: "toupCar",
                            method: "post",
                            data: {cid: r.cid},
                            success: function (d) {
                                $("#cid").val(d.cid);
                                $("#uid").val(d.uid);
                                $("#pid").val(d.pid);
                                $("#count").val(d.count);
                            }

                        }),
                            $("#upCarM").modal("show");
                    },
                    "click #delCarbtn": function (e, v, r, i) {
                        location.href = "/ssmunion/delCar?cid=" + r.cid;
                    }
                }
            }

            ]


        })


    });
</script>

</html>

