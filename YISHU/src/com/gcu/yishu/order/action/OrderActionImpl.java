package com.gcu.yishu.order.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.gcu.yishu.order.pojos.Order;
import com.gcu.yishu.order.service.OrderService;
import com.gcu.yishu.product.pojos.Product;
import com.gcu.yishu.user.pojos.User;
import com.gcu.yishu.util.session.SessionUtil;
import com.opensymphony.xwork2.ModelDriven;

public class OrderActionImpl implements ModelDriven<Order>, OrderAction{

	private OrderService orderService;
	private SessionUtil sessionUtil;
	private User user;
	private Product product;
	private Order order = new Order();
	
	public void setOrderService(OrderService orderService)
	{
		this.orderService=orderService;
	}
	public void setSessionUtil(SessionUtil sessionUtil)
	{
		this.sessionUtil=sessionUtil;
	}
	
	@Override
	public void addOrderList() {
		// TODO Auto-generated method stub
		System.out.println("addItemList Action Test");
		
		Date date = null;
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(currentTime);
		
		try {
			date = formatter.parse(dateString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(dateString);
		System.out.println(date);
		
		user=(User)sessionUtil.getSession().get("UserList");
		product=(Product)ServletActionContext.getRequest().getSession().getAttribute("product");
		
		System.out.println("Product ID Test:"+product);
		
		order.setOrder(date, 1, 1, 1, 1, user, product);
		
		System.out.println("Item getUser Test:"+order.getUser());
		
		System.out.println("Product ID test2: "+order.getProduct());
		
		orderService.addOrderList(order);
	}

	@Override
	public String findOrderList() {
		
		User user=(User)sessionUtil.getSession().get("UserList");
		System.out.println("findItemList Action Test");
		List<Order> item=orderService.findOrderList(user);
		for(Order isitem:item)
		{
			System.out.println(user+"->Item: "+isitem.getOrder_Id());
			System.out.println(user+"->Item: "+isitem.getCreateTime());
			System.out.println(user+"->Item: "+isitem.getIsitarrive());
		}
		return "successfindItem";
	}

	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		return order;
	}

}

