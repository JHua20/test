package com.gcu.yishu.product.service;

import java.io.Serializable;

import com.gcu.yishu.pagination.PageInfo;
import com.gcu.yishu.product.pojos.Product;



public interface ProductService{
	
	//新增
	public void save(Product product);
	//更新
	public void update(Product product);
	//封装分页对象到pageinfo里
	public  PageInfo listpage(int currentPage); 
	
//	//根据id删除
//	public void delete(Serializable id);
//	//查询列表
//	public List<Product> findObjects();
//	//根据id查询
	public Product findObjectById(Serializable id);
		
}