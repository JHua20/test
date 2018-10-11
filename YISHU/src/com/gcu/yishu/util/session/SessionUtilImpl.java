package com.gcu.yishu.util.session;

import java.util.Map;

public class SessionUtilImpl implements SessionUtil{
	
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}

	@Override
	public Map<String, Object> getSession() {
		// TODO Auto-generated method stub
		return session;
	}

}
