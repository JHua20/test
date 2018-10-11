<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Update</title>
</head>
<body>

 Test: <s:property value="#session.UserList2.SNO"/><br/>

	<form action="User_update.action" method="post">
	

        <img src="<s:property value="#session.UserList.HeadImgPath" />" width="100" height="100"/>


        <input type="file" name="HeadImg"/><br/>
        
		    <input type="hidden" name="ID" value="<s:property value="#session.UserList.ID"/>" />
		学号：<input type="text" name="SNO" value="<s:property value="#session.UserList.SNO"/>"/><br/> 
		用户名：<input type="text" name="UserName" value="<s:property value="#session.UserList.UserName"/>"/><br/> 
		密码：<input type="text" name="Password" value="<s:property value="#session.UserList.Password"/>"/><br/>
		手机号：<input type="text" name="MobilePhone" value="<s:property value="#session.UserList.MobilePhone"/>"/><br/>
		专业：<input type="text" name="Major" value="<s:property value="#session.UserList.Major"/>"/><br/>
		年级：<input type="text" name="Grade" value="<s:property value="#session.UserList.Grade"/>"/><br/>
		订单数： <input type="text" name="SuccessOrderNum" value="<s:property value="#session.UserList.SuccessOrderNum"/>"/><br/>
		<input type="submit" value="修改"/><br/>
	</form>
</body>
</html>