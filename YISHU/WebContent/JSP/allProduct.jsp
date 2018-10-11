<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全部商品</title>
</head>
<body>
      <a href="${pageContext.request.contextPath}/Product_homePage"> 主页 </a>
      <table>
       <tr>
           <td></td>
           <td>商品编号</td>
           <td>商品名</td>
           <td>价格</td>
           <td>出版社</td>
           <td>作者</td>
           <td>出版时间</td>
       </tr> 
       <!-- items 用于接收集合对象，var 定义对象接收从集合里遍历出的每一个元素 -->
       <c:forEach items="${PageInfo.list}" var="product">     
       <tr>
           <td>
           <img src="${product.pic_path}" width="130"height="130"/>
           <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}">
           </a>
           </td>
           <td><Label>${product.pro_id}</Label></td>
           <td><Label>${product.pro_name} 
           <a href="${pageContext.request.contextPath}/Product_detail.action?Pro_ID=${product.pro_id}">
           </a></Label></td>
           <td><Label>${product.pro_price}</Label></td>
           <td><Label>${product.pro_press}</Label></td>
           <td><Label>${product.pro_author}</Label></td>
           <td><Label>${product.pro_pubishTime}</label></td> 
          
       </tr>
       </c:forEach>
    </table>
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
</body>
</html>