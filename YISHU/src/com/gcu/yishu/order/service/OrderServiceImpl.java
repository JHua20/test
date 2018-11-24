package com.gcu.yishu.order.service;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.gcu.yishu.order.dao.OrderDao;
import com.gcu.yishu.order.pojos.Order;
import com.gcu.yishu.order.pojos.OrderItem;
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

	@Override
	public String addOrderItem(OrderItem orderItem) {
		// TODO Auto-generated method stub
		System.out.println("<--------------------------addOrderService----------------------->");
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("User");
		Order order = orderDao.findNullOrder(user);
		System.out.println("1111------------------------"+user.toString()+"-------------------"+order.toString());
		List<OrderItem> orderItems = orderDao.findOrderItem(order);
		System.out.println("------------------------"+user.toString()+"-------------------"+order.toString());
		for(OrderItem addOrderItems:orderItems){
			System.out.println("addOrderItem Service----------->"+orderItem.getProductID().toString()+"----------"+addOrderItems.getProductID().toString());
			if(orderItem.getProductID().equals(addOrderItems.getProductID())){
				System.out.println("addOrderItem Service Test addOrderItems----------->");
				addOrderItems.setCount(orderItem.getCount()+addOrderItems.getCount());
				System.out.println("addOrderItem Service Test addOrderItems----------->"+addOrderItems.getCount());
				
			}else{
//			orderDao.addOrderItem(orderItem);
			}
		}
		return null;
	}

	@Override
	public Order findNullOrder(User user) {
		// TODO Auto-generated method stub
		Order order=orderDao.findNullOrder(user);
		return order;
	}

}
