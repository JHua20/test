<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 导入struts标签，并以s为前缀。即以s为前缀的标签均来自struts标签库 -->
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<html>
<head>
<%  
String path = request.getContextPath();  

String webContentPath =request.getSession().getServletContext().getRealPath("/");
System.out.println(webContentPath);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 

 <link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/bootstrap.css">
 <link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/pro_details.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>个人主页</title>
</head>
<body>
<!--      <div>主页 -->
<%--      <a href="<s:url action="User_ToLogin"/>">登录</a> --%>
<%--      <a href="<s:url action="Product_addUI"/>"> 上架商品 </a>                          --%>
<%--      <a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=1">我的商品</a> --%>

<!--      </div> -->
 
<div class="container">
        <nav aria_label="breadcrumb breadcrumbback">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">个人中心</li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_homePage">主页</a></li>
                <li class="breadcrumb-item"><a href="<s:url action="Product_addUI"/>"> 上架商品 </a></li>
                
                <li class="breadcrumb-item"><a href="<s:url action="Product_listPage"><s:param name="CurrentPage" value="1"></s:param></s:url>">我的商品</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=1">我的商品</a></li>
                <li class="breadcrumb-item"><a href="<s:url action="#"/>">购物车</a></li>
                <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/Product_allProduct.action?CurrentPage=1">所有商品</a></li>
            </ol>
        </nav>
        
<!--         <div class="row"> -->
<%--         <c:forEach items="${PageInfo.list}" var="product">  --%>
<!--               <div class="card row_bottom col-md-3"> -->
<%--                   <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}"> --%>
<!--                      <img class="pro_img" src="../Picture/01.jpg"  alt="高等数学"> -->
<!--                   </a> -->
<!--                   <div class="card-block"> -->
<%--                       <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}"> --%>
<%--                     <h4 class="card-title pro_title">${product.pro_name}</h4> --%>
<!--                       </a> -->
<%--                       <p class="card-text pro_press">${product.pro_press}</p> --%>
<%--                       <span class="car-link pro_price">￥ ${product.pro_price}</span> --%>
<!--                       &nbsp;&nbsp;&nbsp; -->
<%--                       <span class="text-right cark-link pro_collected text-muted">15人收藏</span> --%>
<!--                   </div> -->
<!--               </div> -->
<%--         </c:forEach> --%>
<!--         </div> -->

<!--         <div> -->
<%--                                  共[<b>${PageInfo.allRowCount}</b>]条记录,共[<b>${PageInfo.pageCount}</b>]页,当前第[<b>${PageInfo.currentPage}</b>]页     --%>
           
<!--            当前页为不是第一页，有上一页 -->
<%--            <c:if test="${PageInfo.currentPage!=1}"> --%>
<%--               [<a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=${CurrentPage-1}">上一页</a>] --%>
<%--            </c:if> --%>
<!--            当前页为不是最后一页，有下一页 -->
<%--            <c:if test="${PageInfo.currentPage!=PageInfo.pageCount}"> --%>
<%--                [<a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=${CurrentPage+1}">下一页</a>] --%>
<%--            </c:if> --%>
<!--        </div> -->
</div>
  
</body>
</html>