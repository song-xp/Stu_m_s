<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <title>用户登录</title>
    <meta name="author" content="Lee Charles">
    <script type="text/javascript">
    	function login(){
    	    var isLogin = true;
    		var name = document.getElementById("username").value;
    		var pwd = document.getElementById("password").value;
    		if(name=="" || pwd==""){
    			isLogin = false;
    			alert("用户名或密码不能为空!");
    		}
    		return isLogin;
    	}
	</script>
    <link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
</head>

<body style="background:url(${pageContext.request.contextPath}/images/background.png) no-repeat 0% 100%;background-size: cover;">
<div class="container-fluid" >
    <div class="row-fluid">
        <div class="row-fluid">
            <div class="login-box">
            	<hr/>
				<font style="margin:5px;color: #333;text-align: center;line-height: 32px;font-size: 24px;">湖南信息职业技术学院学生管理系统</font>
                <hr/>
                <form action="${pageContext.request.contextPath}/login" method="post" class="loginform" onsubmit="return login()">
                        <div class="input-prepend" title="Username">
                            <span class="add-on"><i class="icon-user"></i></span>
                            <input value="${username}" class="input-large span10" name="username" id="username" type="text" placeholder="用户名"/>
                        </div>
                        <div class="clearfix"></div>
                        <div class="input-prepend" title="Password">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <input value="${password}" class="input-large span10" name="password" id="password" type="password" placeholder="密码"/>
                        </div>
                        <div class="clearfix">
	                        <div style="margin-right: 20px" class="pull-right" >
	                            <%--<input  type="checkbox" name="remmber" value="1" <c:if test="${flag}">checked="checked"</c:if> /><span>记住密码</span>--%>
	                            <input  type="checkbox" name="status" value="1" id="rememberMe" /><span>记住密码</span>
	                        </div>
						</div>
                        <div class="btn-group button-login">
                            <button type="submit" class="btn btn-primary">登录</button>
                        </div>
                        <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>

<span id="msg" style="display: none;">${msg}</span>
<a href="${pageContext.request.contextPath}/jsp/stuLogin.jsp" id="changeLogin">学生登录</a>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script type="text/javascript">
    var msg = document.getElementById("msg").innerText;
    if(msg != ''){
        alert(msg);
    }
</script>
<script type="text/javascript">
    $(function(){
// 	编写函数,在按键升起时触发,监测cookie中是否存在该用户名的key,如果有,则把value赋值给密码框
        $("#username").keyup(function(){
            var username = $("#username").val();
            if(username != ""){
                var password = $.cookie(username);
                if(password!=null){
                    $("#password").val(password);
                    $("#rememberMe").attr("checked",true);
                }
            }
        })
    });
</script>
</body>
</html>

