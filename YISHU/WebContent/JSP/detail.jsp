<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/pro_main_info.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product_detail</title>
</head>
<body>
  <div class="container">
    <nav aria_label="breadcrumb breadcrumstyle">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_homePage">主页</a></li>
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_allProduct.action?CurrentPage=1">所有商品</a></li>
            <li class="breadcrumb-item active">商品详情</li>
        </ol>
    </nav>
    <div class="row center_content">
        <div class="col-md-6 col-xs-6 border border-info text-center">
            <div class="rounted main_img_con">
               <img src="${product.pic_path}" class="main_img img-thumbnail" alt="图片">
            </div>
            <div class="row small_img_con">
                <ul class="img_ul">
                    <li class="img_li border"><img src="lib/bootstrap/img/高等数学.jpg" alt="书本详情" class=""></li>
                    <li class="img_li border"><img src="lib/bootstrap/img/2.jpg" alt="书本详情" class=""></li>
                    <li class="img_li border"><img src="lib/bootstrap/img/2.jpg" alt="书本详情" class=""></li>
                    <li class="img_li border"><img src="lib/bootstrap/img/2.jpg" alt="书本详情" class=""></li>
                </ul>
            </div>
        </div>
        <div class="col-md-6 col-xs-6 border">
            <h3 class="pro_name">${product.pro_name}</h3>
            <table class="table table_height">
                <tr>
                    <td>作者</td>
                    <td>${product.pro_author}</td>
                </tr>
                <tr>
                    <td>现价</td>
                    <td class="pro_price">￥<b>${product.pro_price}</b></td>
                </tr>
                <tr>
                    <td>出版社</td>
                    <td>${product.pro_press}出版社</td>
                </tr>
                <tr>
                    <td>发布时间</td>
                    <td>${product.pro_pubishTime}</td>
                </tr>
                <tr>
                    <td>简介</td>
                    <td><p class="pro_remark">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem nihil sed modi quisquam expedita eligendi illum nulla, minima ea totam! Non assumenda consequatur quam, officia magnam minus, doloribus nisi beatae?</p></td>
                </tr>
                <tr>
                    <td>数量</td>
                    <td>
                        <div class="btn-group btn-group-toggle btn-group-sm" data-toggle="button">
                            <label class="btn btn-secondary">
                                <input type="radio" name="" id="add" autocomplete="off" checked>+
                            </label>
                            <label class="btn btn-outline-secondary" id="" name="">1</label>
                            <label class="btn btn-secondary">
                                <input type="radio" name="" id="minus" autocomplete="off">-
                            </label>
                        </div>
                        <span>（现存12件）</span>
                    </td>
                </tr>
                <tr>
                    <td><a class="btn btn-primary" href="#">现在购买</a></td>
                    <td><a class="btn btn-danger" href="Product_shopCar">加入购物车</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<script src="<%=basePath%>JSP/lib/jquery-3.3.1.js"></script>
<script src="<%=basePath%>JSP/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>