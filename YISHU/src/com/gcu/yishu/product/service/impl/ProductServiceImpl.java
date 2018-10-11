package com.gcu.yishu.product.service.impl;

import java.io.Serializable;
import java.util.List;

import com.gcu.yishu.pagination.PageInfo;
import com.gcu.yishu.product.dao.ProductDao;
import com.gcu.yishu.product.pojos.Product;
import com.gcu.yishu.product.service.ProductService;

//@Service("ProductService")
public class ProductServiceImpl implements ProductService {

	//@Resource
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public void save(Product product) {
		System.out.println("ProductServiceimpl");
		productDao.save(product);
	}

	@Override
	public void update(Product product) {
		productDao.update(product);
	}
	
	//封装分页数据到pageinfo对象里
    public PageInfo listpage(int currentPage) {
    	//获得总记录数,要查询 {数据库}
    	int allRowCount=productDao.findCount();
    	
    	System.out.println("allRowCount: "+allRowCount);
    	//每页显示 的记录数
    	int pageSize = 5;
    	
    	//创建PageInfo对象(三个参数分别为----总记录数+++每页显示记录数+++++当前页数)
		PageInfo pageinfo = new PageInfo(allRowCount,pageSize,currentPage);
		
		//每页记录list的集合（参数-----起始页++每页记录数）要连{数据库}
		System.out.println("----ServiceIpml----");
		System.out.println("pageinfo.getAllRowCount: "+pageinfo.getAllRowCount());
		System.out.println("pageinfo.getBeginIndex: "+pageinfo.getBeginIndex());
		
		List<Product> list = productDao.findPage(pageinfo.getBeginIndex(),pageSize);
		System.out.println("Service层findPage: "+list);
		pageinfo.setList(list); 
		
		return pageinfo;
	}
//
//	@Override
//	public void delete(Serializable id) {
//		productDao.delete(id);
//	}
//
//	@Override
//	public List<Product> findObjects() {		
//		return productDao.findObjects();
//	}
//
	@Override
	public Product findObjectById(Serializable id) {
		return productDao.findObjectById(id);
	}

}
