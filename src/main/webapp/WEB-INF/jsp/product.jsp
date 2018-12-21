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

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <%--时间控件css--%>
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
</head>

<body>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="#"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
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
                    <li><a href="/ssmunion/order" ><i class="lnr lnr-home"></i> <span>订单管理</span></a></li>
                    <li><a href="/ssmunion/product" class="active"><i class="lnr lnr-home"></i> <span>商品管理</span></a></li>
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
       <%-- 新增模态框--%>
           <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
               <div class="modal-dialog" role="document">
                   <div class="modal-content">
                       <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                   aria-hidden="true">&times;</span>
                           </button>
                           <h4 class="modal-title" id="myModalLabel">新增商品信息</h4>
                       </div>
                       <form action="saveProduct" method="post" enctype="multipart/form-data">
                           <div class="modal-body">
                               商品名称<input type="text" name="pname" class="form-control" placeholder="请在这里输入商品名称"/>
                               商品价钱<input type="text" name="price" class="form-control" placeholder="请在这里输入商品价钱"/>
                               商品介绍<input type="text" name="pdesc" class="form-control" placeholder="请在这里输入商品介绍"/>
                               是否热门<input type="text" name="isHot" class="form-control" placeholder="请在这里输入是否热门"/>
                               商品图片<input type="file" name="file">
                           </div>
                           <div class="modal-footer">
                               <input type="submit" class="btn btn-primary" />
                               <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                           </div>
                       </form>
                   </div>
               </div>
           </div>
<%--新增模态框结束--%>
           <%--修改模态框--%>
           <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
               <div class="modal-dialog" role="document">
                   <div class="modal-content">
                       <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                   aria-hidden="true">&times;</span>
                           </button>
                           <h4 class="modal-title" >修改商品信息</h4>
                       </div>
                       <form action="updateProduct" method="post" enctype="multipart/form-data">
                           <div class="modal-body">
                               <input type="hidden" name="pid" id="pid"/>
                               商品名称<input type="text" name="pname" class="form-control" id="pname"/>
                               商品价钱<input type="text" name="price" class="form-control" id="price"/>
                               商品介绍<input type="text" name="pdesc" class="form-control" id="pdesc"/>
                               是否热门<input type="text" name="isHot" class="form-control" id="isHot"/>

                               商品图片</br>
                               <img src="" name="pimage" id="pimage" width="80px" height="80px">
                               <input type="file" name="file">
                           </div>
                           <div class="modal-footer">
                               <input type="submit" class="btn btn-primary"/>
                               <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                           </div>
                       </form>
                   </div>
               </div>
           </div>

        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid" style="background-color: white">
                <!-- OVERVIEW -->

                    <div class="panel-body">
                        <%--哈哈--%>
                        <div class="row wrapper border-bottom white-bg page-heading">
                            <div class="col-lg-12">
                                <h2>商城用户商品系统</h2>
                                <table id="productTable">
                                    <tfoot>
                                    <tr >
                                        <td colspan="3">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add" >新增</button>
                                        </td>

                                        <td colspan="5">
                                            <ul class="pagination pull-right"></ul>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
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
                        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
                        <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
<%--时间控件js--%>
<script src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script>
<%--时间控件库--%>
<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
</body>
<script>

    $(function () {
        $("#productTable").bootstrapTable({
            url:'products',  //请求地址

            method:'post',  //请求方式

            toolbar:"#toolbar",

            cache:false,

            sortable:true, //是否启用排序

            showColumns : true, //显示下拉框勾选要显示的列

           // showRefresh : true, //显示刷新按钮

           // showResfresh:true,//是否显示刷新按钮

            striped:true, //是否使用行间隔色

            pagination:true,//开启分页

            pageNumber:1,//加载第一页

            pageSize:3,//每页三条

            toolbar: '#toolbar',

            pageList: [3, 5, 10],
            search:true,//开启搜索框

            searchOnEnterKey:true,

            sortOrder: "desc", //排序方式

            sortName: 'pid', // 要排序的字段

            sidePagination:'server',  //分页方式，默认是客户端分页，修改为服务端分页

            height:450,

            columns:[{
                field:'pid',
                title:'商品编号'
            },{
                field:'pname',
                title:'商品名称'
            },{
                field:'pimage',
                title:'商品图片',
                formatter: function (value, row, index) {
                    return addImage(row,value)
                }
            }, {
                field:'price',
                title:'商品价钱'
            },{
                field:'pdesc',
                title:'商品介绍'
            },{
                field:'isHot',
                title:'是否热门'
            }, {
                field:'pdate',
                title:'生产日期',
                formatter: function (value, row, index) {
                    return changeDateFormat(value)
                }
            },{
                title:'操作',
                align: 'center',
                valign: 'middle',
                events: window.operateEvents={
                    'click #btn_modify':function (e,value,row,index) {
                        $("#update").modal('show');
                        $("#pid").val(row.pid);
                        $("#pname").val(row.pname);
                        $("#price").val(row.price);
                        $("#pdesc").val(row.pdesc);
                        $("#isHot").val(row.isHot);
                        $("#pimage").attr("src",row.pimage);
                    },
                    'click #btn_delete':function (e,value,row,index) {
                        if(confirm("确定删除吗")){
                            location.href="deleteProduct?pid="+row.pid;
                        }
                    }
                },
                formatter: function (value, row, index) {
                    return ['<div class="btn-group btn-group-sm" role="group">\n',
                        '<button id="btn_modify" type="button" class="btn btn-primary btn-lg btn-block">修改</button>\n',
                        '<button id="btn_delete" type="button" class="btn btn-danger btn-lg btn-block">删除</button>\n',
                        '</div>'].join('');
                }
            }]
        })
    })

    function changeDateFormat(cellval) {
        var dateVal = cellval + "";
        if (cellval != null) {
            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

           /* var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
            var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
            var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();*/

            return date.getFullYear() + "-" + month + "-" + currentDate ;
        }
    }

    function addImage(row,value) {
        return [
            '<img  src="'+row.pimage+'" width="80px" height="80px"></img>'
            ];
    }
</script>

</html>

