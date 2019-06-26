<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="sh" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>查看所有酒店</title>
    <link rel="stylesheet" href="/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <div class="page-header">
        <nav class="navbar page-header">
            <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
                <i class="fa fa-bars"></i>
            </a>

            <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
                <i class="fa fa-bars"></i>
            </a>
        </nav>
    </div>

    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">酒店管理</li>
                    <li class="nav-item">
                        <a href="/jsp/main.jsp" class="nav-link">
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
                        <a href="/hoteljyf/findall" class="nav-link active">
                            <i class="icon icon-energy"></i> 查看所有酒店
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="content">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            酒店信息
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>酒店编号</th>
                                        <th>酒店类型</th>
                                        <th>酒店名称</th>
                                        <th>酒店地址</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <sh:forEach items="${hoteljyfs}" var="obj">
                                        <tr>
                                            <td>${obj.hotelid}</td>
                                            <td>${obj.hotelclass.hotelclassname}</td>
                                            <td>${obj.hotelname}</td>
                                            <td>${obj.hoteladdress}</td>
                                            <th><a href="/hoteljyf/updateto/${obj.hotelid}">修改</a></th>
                                            <th><a href="/hoteljyf/delete/${obj.hotelid}">刪除</a></th>
                                        </tr>
                                    </sh:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
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

