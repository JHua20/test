package com.gcu.yishu.order.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.gcu.yishu.order.pojos.Order;
import com.gcu.yishu.user.pojos.User;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao{

	private Session session;
	
	@Override
	public void addOrderList(Order item) {
		System.out.println("addItemList Dao Test");
		session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(item);
		transaction.commit();
		session.close();
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Order> findOrderList(User user) {
		System.out.println("findItemList Dao Test");
		session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = (Query) session.createQuery("from T_ORDER where User_ID ="+user.getID());
		List<Order> items=query.getResultList();
		session.close();
		return items;
	}

}
