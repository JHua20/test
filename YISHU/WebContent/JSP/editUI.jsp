<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product_edit</title>
</head>
<body>
<div>-编辑-</div>

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
</body>
</html>