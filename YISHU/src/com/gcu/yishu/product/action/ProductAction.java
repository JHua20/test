package com.gcu.yishu.product.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.imageio.ImageIO;

import com.gcu.yishu.order.action.OrderAction;
import com.gcu.yishu.pagination.PageInfo;
import com.gcu.yishu.product.pojos.Product;
import com.gcu.yishu.product.service.ProductService;
import com.gcu.yishu.user.pojos.User;
import com.gcu.yishu.util.session.SessionUtil;
import com.gcu.yishu.uuid.UUIDUtils;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class ProductAction extends ActionSupport implements ModelDriven<Product> {

	private static final long serialVersionUID = 1L;	
	private Product product = new Product();	
	private ProductService productService;
	private SessionUtil sessionUtil;
	private OrderAction orderAction;
	//10.12增
	private int pageSize = 8;//用于表示分页显示商品个数
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	private int Pro_ID;//属性封装，获取物品id，用于detail页面

	public int getPro_ID() {
		return Pro_ID;
	}

	public void setPro_ID(int pro_ID) {
		Pro_ID = pro_ID;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public void setSessionUtil(SessionUtil sessionUtil)
	{
		this.sessionUtil=sessionUtil;
	}
	
	public void setOrderAction(OrderAction orderAction)
	{
		this.orderAction=orderAction;
	}

	public String add() throws FileNotFoundException, IOException{

		User user=(User)sessionUtil.getSession().get("UserList");
		System.out.println("sessionUtil Test: "+user.getID());

		BufferedImage sourceImg =ImageIO.read(new FileInputStream(product.getPro_pic()));
		System.out.println("Test 2");
		if(sourceImg.getWidth()<600 && sourceImg.getHeight()<800 && product.getPro_pic().length()/1048576<2){
			if(product.getPro_pic()!=null){
				String filePath="E:/JavaEE/product_pic_save/";
				String fileName = UUIDUtils.getUUID()+".jpg";
				String newpath = filePath+fileName;
//				String secondpath = "/YISHU/productImg/"+fileName;
				File diskFile =new File(newpath);
//				File diskFile =new File(secondpath);
				FileUtils.copyFile(product.getPro_pic(),diskFile);
				System.out.println(filePath+fileName);
//				System.out.println("/YISHU/productImg/"+fileName);
//				product.setPic_path(newpath);
				product.setPic_path("/YISHU/productImg/"+fileName);
			}
		}else{
			System.out.println("图片格式不符合，长宽限制为600*800");
			product.setPic_path("WebContent/Picture/默认图片.jpg");//鏄剧ず鑾緱鍥剧�?
		}
		productService.save(product);
		System.out.println("productService-save");
		System.out.println("Product add test： "+product.toString());
		System.out.println("Product add test： "+product.getPro_name());
		return "toHome";
	}


	public String listUI(){
		return "listUI";
	}

	private int CurrentPage=1;
	public int getCurrentPage() {
		return CurrentPage;
	}
	public void setCurrentPage(int currentPage) {
		CurrentPage = currentPage;
	}

	public String listPage(){

		pageSize = 5;
		System.out.println("action----CurrentPage: "+CurrentPage);

		PageInfo pageInfo =productService.listpage(CurrentPage,pageSize);

		System.out.println("action-----getAllRowCount(): "+pageInfo.getAllRowCount());	

		ServletActionContext.getRequest().setAttribute("PageInfo", pageInfo);
		return "listPage";
	}
	//用来显示    所有商品    的分页
	public String allProduct(){

		System.out.println("action----CurrentPage: "+CurrentPage);

		PageInfo pageInfo =productService.listpage(CurrentPage,pageSize);

		System.out.println("action-----getAllRowCount(): "+pageInfo.getAllRowCount());	

		ServletActionContext.getRequest().setAttribute("PageInfo", pageInfo);
		return "allProduct";
	}

	public String editUI(){	
		System.out.println("Action---editUI");

		Integer pro_id = product.getPro_id();

		System.out.println("id :"+pro_id);
		System.out.println("根据id查询对象");

		Product p = productService.findObjectById(pro_id);

		System.out.println("P: "+p.toString());

		ServletActionContext.getRequest().setAttribute("product", p);
		return "editUI";
	}
	private String picPath;
	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	
	//保存编辑
	public String edit() throws FileNotFoundException, IOException{
		System.out.println("1");
		System.out.println("product.getPro_pic(): "+product.getPro_pic());
		
		
		if(product.getPro_pic()!=null){
			BufferedImage sourceImg =ImageIO.read(new FileInputStream(product.getPro_pic()));
			if(sourceImg.getWidth()<600 && sourceImg.getHeight()<800 && product.getPro_pic().length()/1048576<2){
				String filePath="E:/JavaEE/product_pic_save/";
				String fileName = UUIDUtils.getUUID()+".jpg";
				String newpath = filePath+fileName;
				File diskFile =new File(newpath);
				FileUtils.copyFile(product.getPro_pic(),diskFile);
				System.out.println(filePath+fileName);
				product.setPic_path(newpath);
			}else{
				System.out.println("图片格式不符合，长宽限制为600*800");
				product.setPic_path("WebContent/Picture/默认图片.jsp");
			}				
		}else{
			product.setPic_path(picPath);//设回原路径
			System.out.println("采用图片： "+picPath);
		}

		System.out.println("update检查完图片");
		if(product!=null){
			productService.update(product);
		}
		
		return "toHome";
	}
	//跳转到新增页面
	public String addUI(){
		//判断是否登录
//		if(sessionUtil.getSession()==null){
//			System.out.println("尚未登录，请登录");
//			return "Login";
//		}
		return "addUI";
	}

	//index的action用来把list放到主页面
	public String homePage(){
		System.out.println("Action--homePage");

		PageInfo pageInfo =productService.listpage(CurrentPage,pageSize);

		ServletActionContext.getRequest().setAttribute("PageInfo", pageInfo);

		
		return "main";
	}

	//跳转详情页
	public String detail(){
		System.out.println("id :"+Pro_ID);
		//根据id查询
		System.out.println("根据id查询对象");

		Product product = productService.findObjectById(Pro_ID);
		
		ServletActionContext.getRequest().setAttribute("product", product);
		ServletActionContext.getRequest().getSession().setAttribute("product", product);
		return "detail";
	}
	//转购物车
	public String shopCar(){
//		if(sessionUtil.getSession()==null){
//			System.out.println("尚未登录，请登录");
//			return "Login";
//		}
		System.out.println("购物车");
		System.out.println("Product ID Test: "+ServletActionContext.getRequest().getSession().getAttribute("product"));
		orderAction.addOrderList();
		return "shopCar";
	}
	//转登录页
	public String login(){
		return "login";
	}

	@Override
	public Product getModel() {
		// TODO Auto-generated method stub
		return product;
	}

	

	
}
