package com.gcu.yishu.order.service;

import java.util.List;

import com.gcu.yishu.order.dao.OrderDao;
import com.gcu.yishu.order.pojos.Order;
import com.gcu.yishu.user.pojos.User;

public class OrderServiceImpl implements OrderService{

	private OrderDao orderDao;
	
	public void setOrderDao(OrderDao orderDao)
	{
		this.orderDao=orderDao;
	}
	
	@Override
	public String addOrderList(Order order) {
		// TODO Auto-generated method stub
		System.out.println("Service addItem Test!!");
		orderDao.addOrderList(order);
		return null;
	}

	@Override
	public List<Order> findOrderList(User user) {
		// TODO Auto-generated method stub
		List<Order> orders = orderDao.findOrderList(user);
		return orders;
	}

}
