package com.gcu.yishu.user.dao;

import java.util.List;

import javax.persistence.Query;

//import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.gcu.yishu.user.pojos.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	
	private Session session;
	
	@Override
	public void User_add(User user)
	{
		session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findUserList(String sno) {
		// TODO Auto-generated method stub
		session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query = (Query) session.createQuery("from User where SNO=sno");
		List<User> users=query.getResultList();
		session.close();
		return users;
	}

	@Override
	public void updateUserList(User exitUser) {
		// TODO Auto-generated method stub
		session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.update(exitUser);
		transaction.commit();
		session.close();
		System.out.println("User update success");
	}
}
