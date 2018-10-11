package com.gcu.yishu.order.dao;

import java.util.List;

import com.gcu.yishu.order.pojos.Order;
import com.gcu.yishu.user.pojos.User;

public interface OrderDao {
	
	/*通过用户名添加用户订单*/
	public void addOrderList(Order order);
	/*通过用户名查找对应订单*/
	List<Order> findOrderList(User user);

}
