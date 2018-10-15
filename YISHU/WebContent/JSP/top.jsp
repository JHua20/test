<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/comm/taglibs.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!-- 对应session的user -->
<c:set var="user" value="${user}"></c:set>
<!-- 头部登录栏  -->
<ul class="nav nav-pills bg-danger justify-content-end" role="tablist">
   <c:if test="${empty user}">
	   	<li class="nav-item" >
	        <a class="nav-link" id="home-bills" data-toggle="modal" role="tab" aria-controls="home-pills" aria-selected="true" href="#" style="color:white;" data-target="#toLogin">登录</a>
	    </li>
	    <li class="nav-item">
	        <a class="nav-link" id="second-pills"  data-toggle="modal" data-target="#toRegister" aria-controls="second-pills" style="color:white;" aria-selected="true" href="#">注册</a>
	    </li>
   </c:if>
   <!-- 头部 差获取名字参数 整合得到用户名  -->
   <c:if test="${not empty user}">
   		<li class="nav-item" >
	       	 亲爱的<span style="color:green;">${user.name}</span>，欢迎回来~
	    </li>
   </c:if>
</ul>

<div class="modal fade" style="top:30%;" id="toLogin" tabindex="-1" role="dialog" aria-labelledby="login_title" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title" id="login_title">登录</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span arid-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" >
                    <div class="container-flush">
                        <form role="form" method="post" action="User_login.action">
                            <div class="form-group has-feedback input-group input-group-sm col-md-10">
                                <span class="input-group-text rounded-left clear_right-radius">
                                    <span class=" glyphicon glyphicon-user form-control-feedback"></span>
                                </span>  
                                <input type="text" name="SNO" class="form-control" placeholder="学号" required> 
                            </div>

                            <div class="form-group has-feedback input-group input-group-sm col-md-10">
                                <span class="input-group-text rounded-left clear_right-radius">
                                    <span class=" glyphicon glyphicon-lock form-control-feedback"></span>
                                </span>
                                <input type="password" name="Password" class="form-control" placeholder="密码" required> 
                            </div>

                            <div class="text-right col-md-10">
                                <input class="btn btn-danger btn-sm col-md-12" type="submit" value="登录"/>
                            </div>
                        </form>
                     </div>
                </div>
            </div>
        </div>
    </div>
    
<div class="modal fade" style="top:30%;" id="toRegister" tabindex="-1" role="dialog" aria-labelledby="register_title" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title" id="register_title">用户注册</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span arid-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" >
                    <div class="container-flush">
                        <form role="form" action="User_add.action" method="post">
                            <div class="form-group has-feedback input-group input-group-sm col-md-10">
                                <span class="input-group-text rounded-left clear_right-radius">
                                    <span class=" glyphicon glyphicon-user form-control-feedback"></span>
                                </span>  
                                <input type="text" name="UserName" class="form-control" placeholder="输入用户名..." required> 
                            </div>

                            <div class="form-group has-feedback input-group input-group-sm col-md-10">
                                <span class="input-group-text rounded-left clear_right-radius">
                                    <span class=" glyphicon glyphicon-lock form-control-feedback"></span>
                                </span>
                                <input type="password" name="Password" class="form-control" placeholder="输入密码..." required> 
                            </div>

                           <div class="form-group has-feedback input-group input-group-sm col-md-10">
                                <span class="input-group-text rounded-left clear_right-radius">
                                    <span class=" glyphicon glyphicon-lock form-control-feedback"></span>
                                </span>
                                <input type="password" class="form-control" placeholder="再次输入密码..." required> 
                            </div>

                           <div class="form-group has-feedback input-group input-group-sm col-md-10">
                                <span class="input-group-text rounded-left clear_right-radius">
                                    <span class=" glyphicon glyphicon-phone form-control-feedback"></span>
                                </span>
                                <input type="text" name="MobilePhone" class="form-control" placeholder="请输入手机号码..." required> 
                            </div>

                           
                            <div class="text-right col-md-10">
                                <input class="btn btn-danger btn-sm col-md-12" type="submit" value="注册"/>
                            </div>
                        </form>
                     </div>
                </div>
            </div>
        </div>
    </div>
    