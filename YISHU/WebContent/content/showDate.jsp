<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Date</title>
</head>
<body>
	学号：<s:property value="#session.UserList.SNO"/>
	用户名：<s:property value="#session.UserList.UserName"/><br/>
	密码：<s:property value="#session.UserList.Password"/><br/>
</body>
</html>