<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags"%>

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
<title>Product_edit</title>
</head>
<body>
<div class="container">
        <nav aria_label="breadcrumb breadcrumbback">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">编辑</li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_homePage">主页</a></li>
                <li class="breadcrumb-item"><a href="<s:url action="Product_addUI"/>"> 上架商品 </a></li>
                
                <li class="breadcrumb-item"><a href="<s:url action="Product_listPage"><s:param name="CurrentPage" value="1"></s:param></s:url>">我的商品</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=1">我的商品</a></li>
                <li class="breadcrumb-item"><a href="<s:url action="#"/>">购物车</a></li>
                <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/Product_allProduct.action?CurrentPage=1">所有商品</a></li>
            </ol>
        </nav>


    <form action="Product_edit?picPath=${product.pic_path}" method="post" enctype="multipart/form-data">
       
       <table>
           <tr>
			   <td><input type="hidden" value="${product.pro_id}" name="Pro_id"/></td>
		   </tr>
           <tr>
               <td>商品名：</td>
               <td><input type="text" value="${product.pro_name}" name="Pro_name"/></td>              
           </tr>
           <tr>
               <td>售价：</td>
               <td><input type="text" value="${product.pro_price}" name="Pro_price"/></td>             
           </tr>
           <tr>
               <td>出版社：</td>
               <td><input type="text" value="${product.pro_press}" name="Pro_press"/></td>            
           </tr>
           <tr>
               <td>作者：</td>
               <td><input type="text" value="${product.pro_author}" name="Pro_author"/></td>             
           </tr>
           <tr>
               <td>产品发布时间：(如：2018-10)</td>
               <td><input type="text" value="${product.pro_pubishTime}" name="Pro_pubishTime"/> </td>             
           </tr>
           <tr><td>封面</td>
<%--                <td><input type="file" value="${product.pro_pic}" name="pro_pic"/></td> --%>
               <td><input type="file" name="pro_pic"/></td>
           </tr>           
       </table>
       <img src="${product.pic_path}" width="130"height="130"/>
       <input type="submit" value="确定"/>      
    </form>
</div>
</body>
</html>