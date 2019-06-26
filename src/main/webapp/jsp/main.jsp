<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="sh" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>首页</title>
    <link rel="stylesheet" href="/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <nav class="navbar page-header">
        <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
            <i class="fa fa-bars"></i>
        </a>

        <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
            <i class="fa fa-bars"></i>
        </a>

    </nav>
    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">酒店管理</li>

                    <li class="nav-item">
                        <a href="/jsp/main.jsp" class="nav-link active">
                            <i class="icon icon-speedometer"></i> 首页
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/hoteljyf/addto" class="nav-link">
                            <i class="icon icon-puzzle"></i> 新增酒店
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="/hotelclass/findall" class="nav-link">
                            <i class="icon icon-grid"></i> 查看所有酒店类型
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/hoteljyf/findall" class="nav-link">
                            <i class="icon icon-energy"></i> 查看所有酒店
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="content">
            <div class="container-fluid">
                <div><h1 align="center">酒店管理系统</h1></div>
            </div>
        </div>
    </div>
</div>
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/popper.js/popper.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/chart.js/chart.min.js"></script>
<script src="/js/carbon.js"></script>
<script src="/js/demo.js"></script>
</body>
</html>

