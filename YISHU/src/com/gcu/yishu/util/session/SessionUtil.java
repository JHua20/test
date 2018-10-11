package com.gcu.yishu.util.session;

import java.util.Map;

public interface SessionUtil {
	
	public void setSession(Map<String, Object> session);
	public Map<String, Object> getSession();
}
