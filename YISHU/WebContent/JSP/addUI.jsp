<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product_add</title>

</head>
<body>
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
     <!-- 之后要换成选项框的 -->
            <td>产品发布时间：(如：2018-10)</td>  
            <td><input type="text" name="Pro_pubishTime"/></td>
           
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
             <input type="file" name="pro_pic"/>
            </td>
       </tr>
       <!-- 图片预览 
       <tr>
           <td><img src="<s:property value="pic_path"/>"></img></td>
       </tr>
      -->
      <tr>
            <td><input type="submit" value="确定"> </td>   
      </tr>
      </table>                            
   </form>

</body>
</html>