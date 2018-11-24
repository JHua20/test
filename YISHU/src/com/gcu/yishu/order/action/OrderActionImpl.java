package com.gcu.yishu.order.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.gcu.yishu.cart.pojos.Cart;
import com.gcu.yishu.cart.pojos.CartItem;
import com.gcu.yishu.order.pojos.Order;
import com.gcu.yishu.order.pojos.OrderItem;
import com.gcu.yishu.order.service.OrderService;
import com.gcu.yishu.user.pojos.User;
import com.opensymphony.xwork2.ModelDriven;

public class OrderActionImpl implements ModelDriven<Order>, OrderAction{

	private OrderService orderService;
	private Order order = new Order();
	
	public void setOrderService(OrderService orderService)
	{
		this.orderService=orderService;
	}
	
	@Override
	public String addOrderList() {
		// TODO Auto-generated method stub
		System.out.println("addItemList Action Test");//方法运行测试
		
		Cart cart = (Cart)ServletActionContext.getRequest().getSession().getAttribute("Cart");
		if(cart==null)
		{
			System.out.println("你还没有购物车");
			return "nonCart";
		}
		System.out.println("OrderActionAdd Test for User----------------->");
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("User");
		System.out.println("Save Orders with :"+user.getUserName());
		order.setOrder(getDate(), 1, 1, 1, 1, user);//设置Order表的映射pojos
		System.out.println("<--------save Orders--------->");
		for(CartItem cartItem:cart.getCartItems())
		{
			OrderItem orderItem = new OrderItem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSum(cartItem.getSum());
			orderItem.setProductID(cartItem.getProductID());
			orderItem.setOrderID(order);
			
			order.getOrderItems().add(orderItem);
		}
		orderService.addOrderList(order);//订单入库
		cart.clearCart();
		return "saveOrder";
	}

	@SuppressWarnings("unchecked")
	@Override
	public String findOrderList() {
		// TODO Auto-generated method stub
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("User");
		System.out.println("findItemList Action Test");
		List<Order> order=orderService.findOrderList(user);
		ServletActionContext.getRequest().getSession().setAttribute("Order", order);
		
		List<Order> orders=(List<Order>)ServletActionContext.getRequest().getSession().getAttribute("Order");
		for(int i=0;i<orders.size();i++){
			for(OrderItem orderItems:orders.get(i).getOrderItems())
			{
				System.out.println("Test OrderItem OrderID--->"+orderItems.getOrderID());
				System.out.println("Test OrderItem ProductID--->"+orderItems.getProductID());
				System.out.println("Test OrderItem Count--->"+orderItems.getCount());
				System.out.println("Test OrderItem Sum--->"+orderItems.getSum());
			}
		}
		
		return "findOrder";
	}
	
	@Override
	public String addNULLOrder() {
		// TODO Auto-generated method stub
		System.out.println("<--------------AddNULLOrder--------->");
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("User1");
		System.out.println("User Test----------->"+user.toString());
		order.setOrder(getDate(), 0, 0, 0, 0, user);
		orderService.addOrderList(order);
		return null;
	}
	
	/*
	 * 添加购物车内容进数据库
	 * */
	@Override
	public String addOrderItem() {
		// TODO Auto-generated method stub
		System.out.println("<-----------------------添加订单到数据库-------------------->");
		Cart cart = (Cart)ServletActionContext.getRequest().getSession().getAttribute("Cart");
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("User");
		System.out.println("AddOrderItem Test User--------->"+user.toString());
		Order order = orderService.findNullOrder(user);
		System.out.println("AddOrderItem Test Order-------->"+order.toString());
		for(CartItem cartItem:cart.getCartItems())
		{
			OrderItem orderItem = new OrderItem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSum(cartItem.getSum());
			orderItem.setProductID(cartItem.getProductID());
			orderItem.setOrderID(order);
			
			orderService.addOrderItem(orderItem);
//			order.getOrderItems().add(orderItem);
		}
//		orderService.addOrderItem(null);
		return null;
	}

	@Override
	public Order getModel() {
		// TODO Auto-generated method stub
		return order;
	}
	
	private Date getDate(){
		/*
		 *以固定格式获取系统时间入库
		 * */
		Date date = null;
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		try {
			date = formatter.parse(dateString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}

}

