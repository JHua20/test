<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Test</title>
</head>
<body>
	<table>
		<tr>
			<td>
				<form method="post" action="User_login.action">
					学号：<input type="text" name="SNO"/><br/>
					密码：<input type="text" name="Password"/><br/>
					<input type="submit" value="登录"/><br/>
				</form>
			</td>
			<td>
				用户名：<s:property value="#session.UserList.UserName"/><br/>
			</td>
		</tr>
		<tr>
			<td>
				welcome to main test!!!!
			</td>
		</tr>
	</table>

</body>
</html>