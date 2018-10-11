package com.gcu.yishu.order.pojos;

import java.util.Date;

import com.gcu.yishu.product.pojos.Product;
import com.gcu.yishu.user.pojos.User;

public class Order {
	/*
	 * 
	 */
	private Integer Order_Id;//
	private Date CreateTime;//
	private Integer IsitPay;//
	private Integer Isitarrive;//
	private Integer IsitOnline;//
	private Integer Pro_sum;//

	private User user;//

	private Product product;//
	
	public Order(){super();};
	
	public void setOrder(Date createTime, Integer isitPay, Integer isitarrive, 
			Integer isitOnline, Integer pro_sum, User user,Product product)
	{
		this.CreateTime = createTime;
		this.IsitPay = isitPay;
		this.Isitarrive = isitarrive;
		this.IsitOnline = isitOnline;
		this.Pro_sum = pro_sum;
		this.user = user;
		this.product = product;
	}

	public Integer getOrder_Id() {
		return Order_Id;
	}

	public void setOrder_Id(Integer order_Id) {
		Order_Id = order_Id;
	}

	public Date getCreateTime() {
		return CreateTime;
	}

	public void setCreateTime(Date createTime) {
		CreateTime = createTime;
	}

	public Integer getIsitPay() {
		return IsitPay;
	}

	public void setIsitPay(Integer isitPay) {
		IsitPay = isitPay;
	}

	public Integer getIsitarrive() {
		return Isitarrive;
	}

	public void setIsitarrive(Integer isitarrive) {
		Isitarrive = isitarrive;
	}

	public Integer getIsitOnline() {
		return IsitOnline;
	}

	public void setIsitOnline(Integer isitOnline) {
		IsitOnline = isitOnline;
	}
	
	public Integer getPro_sum() {
		return Pro_sum;
	}

	public void setPro_sum(Integer pro_sum) {
		Pro_sum = pro_sum;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}