<%--
  Created by IntelliJ IDEA.
  User: 李宗超
  Date: 2018/12/18
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
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

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
                    <li><a href="/ssmunion/index1" ><i class="lnr lnr-home"></i> <span>用户管理</span></a></li>
                    <li><a href="/ssmunion/order" class="active"><i class="lnr lnr-home"></i> <span>订单管理</span></a></li>
                    <li><a href="/ssmunion/product" ><i class="lnr lnr-home"></i> <span>商品管理</span></a></li>
                    <li><a href="/ssmunion/staff" ><i class="lnr lnr-home"></i> <span>员工管理</span></a></li>
                    <li><a href="/ssmunion/car" ><i class="lnr lnr-home"></i> <span>购物车管理</span></a></li>
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
                                <div  class="center-block col-lg-12">
                                    <h2>商城订单管理系统</h2>
                                </div>
                            </div>
                            <div class="wrapper wrapper-content animated fadeInRight">
                                            <div style="align-items: center" class="ibox-title">
                                                <p><a class="btn btn-primary btn-lg" href="#" role="button">订单管理</a></p>
                                            </div>


                                                <table class="footable table table-stripped" data-page-size="15" data-filter=#filter id="ordertable">
                                                    <tfoot>
                                                    <tr>
                                                        <td colspan="4">
                                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#orderAdd">新增</button>
                                                        </td>

                                                        <td colspan="11">
                                                            <ul class="pagination pull-right"></ul>
                                                        </td>
                                                    </tr>
                                                    </tfoot>
                                                </table>

                                            <!-- 用户编辑对话框 -->
                                            <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalLabel">修改订单信息</h4>
                                                        </div>
                                                        <form class="form-horizontal" id="edit_Order_form" method="post" action="updateOrder">
                                                            <div class="modal-body">
                                                                <input  type="hidden" id="edit_oid" name="oid"  />
                                                                <div class="form-group">
                                                                    <label for="edit_orderNo" class="col-sm-2 control-label" >订单ID</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_orderNo" placeholder="订单号" name="orderNo" value="${order.orderNo}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userId" class="col-sm-2 control-label">用户Id</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_userId" placeholder="用户Id" name="userId" value="${order.userId}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userName" class="col-sm-2 control-label">用户名</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_userName" placeholder="用户名" name="userName" value="${order.payTime}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_payType" class="col-sm-2 control-label">支付类型</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_payType" placeholder="支付类型" name="payType" value="${order.payType}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_totalPrice" class="col-sm-2 control-label">总价格</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_totalPrice" placeholder="总价格" name="totalPrice" value="${order.totalPrice}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_orderState" class="col-sm-2 control-label">订单状态</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_orderState" placeholder="订单状态" name="orderState" value="${order.orderState}">
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="edit_supplierName" class="col-sm-2 control-label">商家名</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_supplierName" placeholder="商家名" name="supplierName" value="${order.supplierName}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_goodsName" class="col-sm-2 control-label">商品名称</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_goodsName" placeholder="商品名称" name="goodsName" value="${order.goodsName}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_deliveryType" class="col-sm-2 control-label">配送方式</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="edit_deliveryType" placeholder="配送方式" name="deliveryType" value="${order.deliveryType}">
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

                                            <!-- 新增订单对话框 -->
                                            <div class="modal fade" id="studentAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalOrder">请输入新增订单信息</h4>
                                                        </div>
                                                        <form class="form-horizontal" id="add_Order_form" method="post" action="addOrder">
                                                            <div class="modal-body">
                                                                <div class="form-group">
                                                                    <label for="edit_orderNo" class="col-sm-2 control-label" >订单号</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_orderNo" placeholder="订单号" name="orderNo" >
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userId" class="col-sm-2 control-label" >用户ID</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_userId" placeholder="用户ID" name="userId" >
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit_userName" class="col-sm-2 control-label">用户名</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_userName" placeholder="用户名" name="userName" >
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="edit_goodsName" class="col-sm-2 control-label">商品名</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_goodsName" placeholder="商品名" name="goodsName" >
                                                                    </div>
                                                                </div>
                                                                <%--<div class="form-group">--%>
                                                                    <%--<label for="edit_" class="col-sm-2 control-label">创建时间</label>--%>
                                                                    <%--<div class="col-sm-10">--%>
                                                                        <%--<input type="datetime-local" class="form-control" id="add_createTime" placeholder="创建时间" name="createTime" >--%>
                                                                    <%--</div>--%>
                                                                <%--</div>--%>
                                                                <%--<div class="form-group">--%>
                                                                    <%--<label for="edit_payTime" class="col-sm-2 control-label">支付时间</label>--%>
                                                                    <%--<div class="col-sm-10">--%>
                                                                        <%--<input type="text" class="form-control" id="add_payTime" placeholder="支付时间" name="payTime" >--%>
                                                                    <%--</div>--%>
                                                                <%--</div>--%>
                                                                <div class="form-group">
                                                                    <label for="edit_totalPrice" class="col-sm-2 control-label">总价格</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="text" class="form-control" id="add_totalPrice" placeholder="总价格" name="totalPrice" >
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

             </div>
                <!-- END OVERVIEW -->
            </div>
        <!-- END MAIN CONTENT -->
    </div>
    <!-- END MAIN -->
</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="assets/vendor/chartist/js/chartist.min.js"></script>
<script src="assets/scripts/klorofil-common.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>

</body>
<script>
    $(function () {
        //转换日期格式(时间戳转换为datetime格式)
        function changeDateFormat(cellval) {
            var dateVal = cellval + "";
            if (cellval != null) {
                var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
                var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

                var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
                var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
                var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

                return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
            }
        }
        function addOperFunction() {
            return[
                '<button id="btn-edit" class="btn btn-primary">编辑</button>',
                '<button id="btn-delete" class="btn btn-danger">删除</button>'
            ].join(" ")
        };

//        点击按钮会有事件
        window.operateEvents= {
            "click #btn-edit": function (e,v,r,i) {
                $.get(
                    "order/"+r.oid,
                    function (data) {
                        $("#edit_oid").val(data.oid);
                        $("#edit_orderNo").val(data.orderNo);
                        $("#edit_userId").val(data.userId);
                        $("#edit_userName").val(data.userName);
                        $("#edit_payType").val(data.payType);
                        $("#edit_totalPrice").val(data.totalPrice);
                        $("#edit_orderState").val(data.orderState);
                        $("#edit_createTime").val(data.createTime);
                        $("#edit_payTime").val(data.payTime);
                        $("#edit_supplierName").val(data.supplierName);
                        $("#edit_deliveryType").val(data.deliveryType);
                        $("#edit_goodsName").val(data.goodsName);
                    },
                    'json'
                );
                var dailog=$("#editModal").modal({
                    backdrop:"static",
                    keyboard:false
                })
                dailog.modal("show");
            },
            "click #btn-delete": function (e,value,row,i) {
                $.post(
                    'deleteOrder/'+row.oid,

                    function (data) {
                        if(data>0){
                            $("#ordertable").bootstrapTable(("refresh"),{pageNumber:data.pageNumber});
                        }
                    },
                    'json'
                );
            }
        };
        <!-- -->
        $('#ordertable').bootstrapTable({
            //表格属性
            url:'showAllOrders',
            columns:[{
                checkbox: true
            },{
                //列属性
                field:'oid',
                title:'编号'
            },{
                field:'orderNo',
                title:'订单号'
            },{
                field:'userId',
                title:'用户ID'
            },{
                field:'userName',
                title:'用户名'
            },{
                field:'goodsName',
                title:'商品名'
            },{
                field:'supplierName',
                title:'商家名'
            },{
                field:'totalPrice',
                title:'总价格'
            },{
                field:'typeName',
                title:'支付方式'
            },{
                field:'createTime',
                title:'创建时间',
                sortable: true,
                //——修改——获取日期列的值进行转换
                formatter: function (value, row, i) {
                    return changeDateFormat(value)
                }

            },{
                field:'payTime',
                title:'支付时间',
                sortable: true,
                //——修改——获取日期列的值进行转换
                formatter: function (value, row, i) {
                    return changeDateFormat(value)
                }
            },{
                field:'deliveryType',
                title:'配送类型'
            },{
                field:'stateName',
                title:'订单状态'
            },{
                field: 'button',
                title: '操作',
                formatter:addOperFunction,
                events:operateEvents
            }],
            height:500,
            method:'post',
            search: true,
            searchOnEnterKey: true,
            pageNumber: 1,
            pageSize: 3,
            pagination: true,
            sidePagination: 'server',
            pageList:[2,3,4],
            paginationPreText:"上一页",
            paginationNextText:"下一页"
        });

    })
</script>

</html>

