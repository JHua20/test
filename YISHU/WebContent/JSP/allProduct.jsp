<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/yishu_search_message.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>JSP/lib/bootstrap/css/pro_main_info.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>全部商品</title>

</head>
<body>
<div class="container">
		<nav aria_label="breadcrumb breadcrumstyle">
		        <ol class="breadcrumb">
		           
		            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Product_homePage">主页</a></li>
		            <li class="breadcrumb-item"><a href="#">所有商品</a></li>
		            <li class="breadcrumb-item active">商品详情</li>
		        </ol>
		</nav>
</div>
<div id="select_main">
     
     <div class="select_criteria">
			<div id="select_criteria_main">
				<input type="submit" value="全部" class="btn btn-primary">
				<div class="my_font_control">
					<select class="form-control">
					    <option>选择查询条件</option>
						<option>计算机工程</option>
						<option>外国语</option>
						<option>管理</option>
						<option>机械</option>
						<option>其他</option>
					</select>
				</div>
				<div class="my_font_control">
					<select class="form-control">
						<option>按时间升序</option>
						<option>按时间降序</option>
						<option>按价格升序</option>
						<option>按价格降序</option>
					</select>
				</div>
				<input type="submit" value="查找" class="btn btn-primary">
			</div>
		</div>
		<div style="clear: both;"></div>
		<div style="border-bottom: 2px #f0f0f0 solid;padding-top: 1em;"></div>
     
     
		<div class="select_show_goods">
		
			<div class="select_goods_lable">
			<table>
			
                <c:forEach items="${PageInfo.list}" var="product">
                <tr><td>
				     <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}">
                         <img src="${product.pic_path}" width="150"height="150"/>
                     </a>
				     <div class="select_goods_lable_mess">
					     <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}">${product.pro_name}
                         </a>
					     <p class="select_goods_lable_seller">作者： ${product.pro_author}</p>
				    </div>
				    <span class="select_goods_lable_price">￥${product.pro_price}</span>
				    <div class="select_goods_lable_button">
					     <a href="Product_shopCar"><input type="submit" value="购放入购物车" class="btn btn-success"></a>
					     <div style="clear: both;"></div>
					     <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}"><input type="submit" value="查看" class="btn btn-success">
					     </a>					    
				    </div>
				    </td>
				 </tr>
                 </c:forEach>
            
            </table>
			</div>
		
		</div>
		
		
		<div style="clear: both;"></div>
  
      
<!--       <table> -->
<!--        <tr> -->
<!--            <td></td> -->
<!--            <td>商品编号</td> -->
<!--            <td>商品名</td> -->
<!--            <td>价格</td> -->
<!--            <td>出版社</td> -->
<!--            <td>作者</td> -->
<!--            <td>出版时间</td> -->
<!--        </tr>  -->
<!--        items 用于接收集合对象，var 定义对象接收从集合里遍历出的每一个元素 -->
<%--        <c:forEach items="${PageInfo.list}" var="product">      --%>
<!--        <tr> -->
<!--            <td> -->
<%--            <img src="${product.pic_path}" width="130"height="130"/> --%>
<%--            <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}"> --%>
<!--            </a> -->
<!--            </td> -->
<%--            <td><Label>${product.pro_id}</Label></td> --%>
<%--            <td><Label>${product.pro_name}  --%>
<%--            <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}"> --%>
<!--            </a></Label></td> -->
<%--            <td><Label>${product.pro_price}</Label></td> --%>
<%--            <td><Label>${product.pro_press}</Label></td> --%>
<%--            <td><Label>${product.pro_author}</Label></td> --%>
<%--            <td><Label>${product.pro_pubishTime}</label></td>  --%>
          
<!--        </tr> -->
<%--        </c:forEach> --%>
<!--     </table> -->
     <div>
                                 共[<b>${PageInfo.allRowCount}</b>]条记录,共[<b>${PageInfo.pageCount}</b>]页,当前第[<b>${PageInfo.currentPage}</b>]页    
           
           <!-- 当前页为不是第一页，有上一页-->
           <c:if test="${PageInfo.currentPage!=1}">
              [<a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=${CurrentPage-1}">上一页</a>]
           </c:if>
           <!-- 当前页为不是最后一页，有下一页 -->
           <c:if test="${PageInfo.currentPage!=PageInfo.pageCount}">
               [<a href="${pageContext.request.contextPath}/Product_listPage.action?CurrentPage=${CurrentPage+1}">下一页</a>]
           </c:if>
    </div>
</div> 
      <script type="text/javascript" src="<%=basePath%>JSP/lib/bootstrap/css/bootstrap.min.js"></script>
	  <script type="text/javascript" src="<%=basePath%>JSP/lib/bootstrap/css/yishu_search_message.js"></script>   
</body>
</html>