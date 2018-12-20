<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>员工风采</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">

    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height:400px;
        }
    </style>
</head>
<body>
<div class="bg-primary text-white">
    <div class="container">
        <div style="float: left">
            <p ><h1>员工风采</h1></p>
        </div>
        <div style="float: left">
            <p><h1>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default"><a href="shouye">返回首页</a></button></h1></p>
        </div>
    </div>
    </div>
<div class="container" >
        <div id="demo" class="carousel slide" data-ride="carousel" >

            <!-- 指示符 -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>

            </ul>

            <!-- 轮播图片 -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/img/banner-05.jpg">
                </div>
                <div class="carousel-item">
                    <img src="assets/img/bann-05.jpg">
                </div>
                <%--<div class="carousel-item">
                    <img src="http://static.runoob.com/images/mix/img_mountains_wide.jpg">
                </div>--%>
            </div>

            <!-- 左右切换按钮 -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>

        </div>
    <c:forEach items="${staff}" var="s">
        <div class="col-lg-3" style="text-align: center;padding-top: 10px;border: 1px;">
            <div  class="panel-heading">
            <img style="width: 150px;height:200px" src="${s.simage}">
            </div>
            <div class="panel-body">

                <p style="text-align: center"><h3>${s.sname}</h3></p>
                <p >${s.ssex==0?"女":"男"},${s.sage}岁,${s.saddress}</p>
                <%--<button type="button"  onclick="fn('${s.sid}')">投票</button>
                &nbsp;&nbsp;&nbsp;&nbsp;<span id="${s.sid}">0</span>--%>

            </div>
        </div>

    </c:forEach>
</div>




<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>

</html>