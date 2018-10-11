package com.gcu.yishu.pagination;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.gcu.yishu.pagination.PageInfo;

/**
 * @Description 姝ゅ伐鍏峰寘搴旂敤浜庡鍒嗛〉杩涜鎿嶄綔 
 * 
 * @author Ladi
 */
public class PagingUtil {
	
	private HibernateUtils hibernateUtils;

	public void setHibernateUtils(HibernateUtils hibernateUtils) {
		this.hibernateUtils = hibernateUtils;
	}

	/**
	 * @Description 鑾峰彇鏈鏌ヨ鐨勬墍鏈夌储寮�
	 * 
	 * @param hql 鑷畾涔塰ql璇彞
	 * 
	 * @return 鎵�鏈夌鍚堢殑绱㈠紩鏁�
	 */
	@SuppressWarnings("rawtypes")
	public int getAllRows(final String hql) {
		
		Session session=null;		
		Transaction transaction=null;		
		Query query=null;		
		int AllRows=0;		
		try {
			session=hibernateUtils.getSession();			
			transaction=session.beginTransaction();			
			query=session.createQuery(hql);			
			AllRows = query.list().size();			
			transaction.commit();			
		} catch (Exception e) {			
			if (null!=transaction) {
				transaction.rollback();
			}		
			e.printStackTrace();			
		}finally {			
			if (session.isOpen()) {
				session.close();
			}			
		}			
		return AllRows;
	}

	/**
	 * @Description 鏌ヨ姣忛〉鐨勫璞℃暟鎹�
	 * 
	 * @param PageSize 姣忛〉鏄剧ず鐨勬暟鎹�
	 * @param obj 褰撻〉鍩烘湰鏁版嵁
	 * 
	 * @return PageResultSet<T>
	 */
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public <T> PageResultSet<T> getPageResult(String hql,PageInfo obj){		
		Session session=null;		
		Transaction transaction=null;	
		Query query=null;	
		PageResultSet<T> pageResultSet = new PageResultSet<T>();		
		try {
			session=hibernateUtils.getSession();			
			transaction=session.beginTransaction();			
			query=session.createQuery(hql);			
			query.setFirstResult(obj.getBeginIndex());			
			query.setMaxResults(obj.getPageSize());			
			List<T> list=query.list();			
			transaction.commit();			
			pageResultSet.setList(list);
			pageResultSet.setPageInfo(obj);			
		} catch (Exception e) {			
			if (null!=transaction) {
				transaction.rollback();
			}			
			e.printStackTrace();			
		}finally {			
			if (session.isOpen()) {
				session.close();
			}			
		}
	    return pageResultSet;
	}
}
