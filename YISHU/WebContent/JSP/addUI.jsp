<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
 
 <script src="<%=basePath%>JSP/lib/bootstrap/js/AddDate.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>上架商品</title>
<script>
function $$(obj) {
    return document.getElementById(obj);
}
function upload(f){
     
    var str = "";
    for(var i=0;i<f.length;i++){
        var reader = new FileReader();
        reader.readAsDataURL(f[i]);                   //将文件读取为 DataURL
        reader.onload = function(e){                  //文件读取成功完成时触发
            str+="<img style='width:15rem;height:15rem;' src='"+e.target.result+"'/>";
            $$("pic").innerHTML = str;                 //往id为‘dd’的标签内 插入内容
        }
    } 
}
</script>
</head>

<body>
<div class="container">
        <nav aria_label="breadcrumb breadcrumbback">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">商品上架</li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_homePage">主页</a></li>              
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=1">我的商品</a></li>
                <li class="breadcrumb-item"><a href="<s:url action="#"/>">购物车</a></li>
                <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/Product_allProduct.action?CurrentPage=1">所有商品</a></li>
            </ol>
        </nav>
     <form name="form1" action="Product_add.action" method="post" enctype="multipart/form-data">
      <table>
      <!-- 该页面需要获取当前用户名字 ，确定后 自动生成产品编号-->
      <tr>
            <td>商品名：</td>  
            <td><input type="text" name="Pro_name"/></td>
      </tr>
      <tr>
            <td>售价：</td>  
            <td><input type="text" name="Pro_price"/></td>
      </tr>
      <tr>
            <td>出版社：</td>  
            <td><input type="text" name="Pro_press"/></td>
      </tr>
      <tr>
            <td>作者：</td>  
            <td><input type="text" name="Pro_author"/></td>
      </tr>
      <tr>
            <td>专业：</td>  
            <td>
                <select name="major" class="form-control">
				    <option value="0" selected="selected">请选择专业类型</option>
					<option value="计算机">计算机</option>
					<option value="外国语">外国语</option>
					<option value="经济管理">经济管理</option>
					<option value="机械">机械</option>
					<option value="5其他">其他</option>
				</select>
            </td>
      </tr>
      <tr>
      <!-- 之后要换成选项框的 -->
            <td>产品发布时间：(如：2018-10)</td>  
            <td><input type="text" name="Pro_pubishTime" value="2018-10-01" onfocus="HS_setDate(this)"/></td>     
      </tr>
        
      <!--  
       <tr>pro_PubishTime     
            <td>产品详情：</td> 
            <td><input type="text" name="Product.product_Style"/></td>
      </tr>
      -->
      <tr>
           <td>封面上传
           <!-- <img src="${basePath}E://JavaEE//product_pic_save/<property value='pro_pic'/>"width="100" height="100"> --> 
           <input type="file" name="pro_pic" onchange="upload(this.files)"/>
           </td>
       </tr>
       
       <tr> 
           <td id="pic">图片预览</td>
       </tr>
    
      <tr>
            <td><input type="submit" value="确定"> </td>   
      </tr>
      </table>                            
   </form>
</div>
</body>
</html>