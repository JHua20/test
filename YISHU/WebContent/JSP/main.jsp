<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%-- <%@ include file="/comm/base.jsp" %> --%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/mainPage.css">
    <base href="<%=basePath%>">
</head>
<body style="height:1500px;">
<div class="container-flush">
<!--     <ul class="nav nav-pills bg-danger justify-content-end" role="tablist"> -->
<!--       <li class="nav-item" > -->
<!--         <a class="nav-link active" id="home-bills" data-toggle="modal" role="tab" aria-controls="home-pills" aria-selected="true" href="#" data-target="#toLogin">登录</a> -->
<!--       </li> -->
<!--       <li class="nav-item"> -->
<!--         <a class="nav-link" id="second-pills"  data-toggle="modal" data-target="#toRegister" aria-controls="second-pills" aria-selected="true" href="#">注册</a> -->
<!--       </li> -->
<!--     </ul> -->
    
<!-- <div class="modal fade" style="top:30%;" id="toLogin" tabindex="-1" role="dialog" aria-labelledby="login_title" aria-hidden="true"> -->
<!--         <div class="modal-dialog"> -->
<!--             <div class="modal-content"> -->
<!--                 <div class="modal-header bg-danger"> -->
<!--                     <h4 class="modal-title" id="login_title">登录</h4> -->
<!--                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
<%--                         <span arid-hidden="true">&times;</span> --%>
<!--                     </button> -->
<!--                 </div> -->
<!--                 <div class="modal-body" > -->
<!--                     <div class="container-flush"> -->
<!--                         <form role="form" method="post" action="User_login.action"> -->
<!--                             <div class="form-group has-feedback input-group input-group-sm col-md-10"> -->
<%--                                 <span class="input-group-text rounded-left clear_right-radius"> --%>
<%--                                     <span class=" glyphicon glyphicon-user form-control-feedback"></span> --%>
<%--                                 </span>   --%>
<!--                                 <input type="text" name="SNO" class="form-control" placeholder="学号" required>  -->
<!--                             </div> -->

<!--                             <div class="form-group has-feedback input-group input-group-sm col-md-10"> -->
<%--                                 <span class="input-group-text rounded-left clear_right-radius"> --%>
<%--                                     <span class=" glyphicon glyphicon-lock form-control-feedback"></span> --%>
<%--                                 </span> --%>
<!--                                 <input type="password" name="Password" class="form-control" placeholder="密码" required>  -->
<!--                             </div> -->

<!--                             <div class="text-right col-md-10">                  -->
<!--                                 <input class="btn btn-danger btn-sm col-md-12" type="submit" value="登录"/><br/> -->
<!--                             </div> -->
<!--                         </form> -->
<!--                      </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
    
<!--     <div class="modal fade" style="top:30%;" id="toRegister" tabindex="-1" role="dialog" aria-labelledby="register_title" aria-hidden="true"> -->
<!--         <div class="modal-dialog"> -->
<!--             <div class="modal-content"> -->
<!--                 <div class="modal-header bg-danger"> -->
<!--                     <h4 class="modal-title" id="register_title">用户注册</h4> -->
<!--                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
<%--                         <span arid-hidden="true">&times;</span> --%>
<!--                     </button> -->
<!--                 </div> -->
<!--                 <div class="modal-body" > -->
<!--                     <div class="container-flush"> -->
<!--                         <form role="form" action="User_add.action" method="post"> -->
<!--                             <div class="form-group has-feedback input-group input-group-sm col-md-10"> -->
<%--                                 <span class="input-group-text rounded-left clear_right-radius"> --%>
<%--                                     <span class=" glyphicon glyphicon-user form-control-feedback"></span> --%>
<%--                                 </span>   --%>
<!--                                 <input type="text" name="UserName" class="form-control" placeholder="输入用户名..." required>  -->
<!--                             </div> -->

<!--                             <div class="form-group has-feedback input-group input-group-sm col-md-10"> -->
<%--                                 <span class="input-group-text rounded-left clear_right-radius"> --%>
<%--                                     <span class=" glyphicon glyphicon-lock form-control-feedback"></span> --%>
<%--                                 </span> --%>
<!--                                 <input type="password" name="Password" class="form-control" placeholder="输入密码..." required>  -->
<!--                             </div> -->

<!--                            <div class="form-group has-feedback input-group input-group-sm col-md-10"> -->
<%--                                 <span class="input-group-text rounded-left clear_right-radius"> --%>
<%--                                     <span class=" glyphicon glyphicon-lock form-control-feedback"></span> --%>
<%--                                 </span> --%>
<!--                                 <input type="password" class="form-control" placeholder="再次输入密码..." required>  -->
<!--                             </div> -->

<!--                            <div class="form-group has-feedback input-group input-group-sm col-md-10"> -->
<%--                                 <span class="input-group-text rounded-left clear_right-radius"> --%>
<%--                                     <span class=" glyphicon glyphicon-phone form-control-feedback"></span> --%>
<%--                                 </span> --%>
<!--                                 <input type="text" name="MobilePhone" class="form-control" placeholder="请输入手机号码..." required>  -->
<!--                             </div> -->

                           
<!--                             <div class="text-right col-md-10"> -->
                                
<!--                                 <input class="btn btn-danger btn-sm col-md-12" type="submit" value="注册"/> -->
<!--                             </div> -->
<!--                         </form> -->
<!--                      </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
    <jsp:include page="/JSP/top.jsp"></jsp:include>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="col-md-4 text-right">
            <img src="<%=basePath%>JSP/lib/bootstrap/img/logo.jpg" class="nav_logo" width="190px" height="80px" alt="易书网">
        </div>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav col-md-8">
               <li class="nav-item active text-center col-md-3">
                    <a class="nav-link" style="font-weight:bolder;color:#f15b28;" href="#">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;首页&nbsp;<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active text-center col-md-3">
                    <a class="nav-link" style="font-weight:bolder;color:#f15b28;" href="#">
                    <span class="glyphicon glyphicon-road"></span>&nbsp;二手市场<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active text-center col-md-3">
                    <a class="nav-link" style="font-weight:bolder;color:#f15b28;" href="${pageContext.request.contextPath}/Product_allProduct.action?CurrentPage=1">
                    <span class="glyphicon glyphicon-book"></span>&nbsp;所有商品<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item text-center col-md-3">
                    <a class="nav-link" style="font-weight:bolder;color:#f15b28;" href="<s:url action="Product_listUI"/>">
                    
                    <span class="glyphicon glyphicon-user"></span>&nbsp;个人中心</a>
                </li>
            </ul>
        </div>
    </nav>
    <br/>
<!--     <div class="container"> -->
<!--         <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"> -->
<!--           <ol class="carousel-indicators"> -->
<!--             <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li> -->
<!--             <li data-target="#carouselExampleIndicators" data-slide-to="1"></li> -->
<!--             <li data-target="#carouselExampleIndicators" data-slide-to="2"></li> -->
<!--           </ol> -->
<!--           <div class="carousel-inner"> -->
<!--             <div class="carousel-item  text-center col-md-12 active "> -->
<!--               <img class="d-block w-100" src="lib/bootstrap/img/滚动图1.jpg" height="300px" alt="First slide"> -->
<!--             </div> -->
<!--             <div class="carousel-item text-center col-md-12"> -->
<!--               <img class="d-block w-100" src="lib/bootstrap/img/带字.jpg" height="300px" alt="Second slide"> -->
<!--             </div> -->
<!--             <div class="carousel-item text-center col-md-12"> -->
<!--               <img class="d-block w-100" src="lib/bootstrap/img/带字.jpg" height="300px" alt="Third slide"> -->
<!--             </div> -->
<!--           </div> -->
<!--           <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> -->
<%--             <span class="carousel-control-prev-icon" aria-hidden="true"></span> --%>
<%--             <span class="sr-only">Previous</span> --%>
<!--           </a> -->
<!--           <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> -->
<%--             <span class="carousel-control-next-icon" aria-hidden="true"></span> --%>
<%--             <span class="sr-only">Next</span> --%>
<!--           </a> -->
<!--         </div> -->
<!--     </div> -->
     <!-- 滚动图  -->
    <jsp:include page="/JSP/slide.jsp"></jsp:include>
    <br/>
    <div class="container text-center">
        <div class=" alert alert-danger bg-danger col-md-12 text-center" >
            <b>///最新上架///</b>
        </div>
        <div class="row text-center" style="padding-left:1rem;">
        
          <c:forEach items="${PageInfo.list}" var="product">
          <div class="card row_bottom" style="width:17rem;height:26rem;margin-right:0.5rem;">
                <div style="width:17rem;height:18rem;">
                   <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}">
                     <img class="card-img-top" style="width:15rem;height:15rem;" src="${product.pic_path}" alt="${product.pro_name}"/>
                   </a>
                </div>
                <div class="card-block" style="width:17rem;height:8rem;padding-top:1rem;">
                   <div class=" text-center " style="width:17rem;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
                      <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}">
                          <span class="card-title pro_name">${product.pro_name}</span>
                      </a>
                    </div>
                    <p class="card-text in_one_row "><span class="card-title">${product.pro_author}主编</span></p>
                    <span class="car-link pro_price">￥ ${product.pro_price}</span>
                    &nbsp;&nbsp;&nbsp;
                    <span class="text-right cark-link pro_collected text-muted">15人收藏</span>
                </div>
            </div>
            </c:forEach>
           
       </div>
    </div>
    <div class="text-center bg-light" id="foot">
        <div class="">
            <img src="lib/bootstrap/img/灰底.jpg" alt="易书网" class="foot_logo">
        </div>
        <div class="foot_word bg-danger">
                                       易书网团队&nbsp&nbsp版权所有
        </div>
    </div>
</div>
<script src="<%=basePath%>JSP/lib/jquery-3.3.1.js"></script>
<script src="<%=basePath%>JSP/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>