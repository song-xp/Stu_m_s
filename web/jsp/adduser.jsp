<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <title>添加用户</title>
    <meta name="author" content="Lee Charles">
    <script type="text/javascript">
    	function adduser(){
    	    var isLogin = true;
    		var name = document.getElementById("username").value;
    		var pwd = document.getElementById("password").value;
    		var pwd2 = document.getElementById("password2").value;
    		if(name=="" || pwd==""){
    			isLogin = false;
    			alert("用户名或密码不能为空!");
    		}
    		if(pwd != pwd2){
    			isLogin = false;
    			alert("两次输入的密码不一致!");
    		}		
    		return isLogin;
    	}
    </script>
    <link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<jsp:include page="header.jsp"/>
<div class="box-header" data-original-title>
		<h2><a href="${pageContext.request.contextPath}/selectAll">主页</a> / 添加用户</h2>
	</div>
	<div class="box-content">
			<span>当前用户：${user.username}</span>
			<c:if test="${user.username=='admin'}">
				<a href="userlist"><font color='green'>用户管理</font></a>
			</c:if>
			<span class="pull-right">${datanow}</span>
</div>
<div class="container-fluid" >
    <div class="row-fluid" >
        <div class="row-fluid" >
            <div class="login-box" style="margin-top: 15px">
                <h2>学生管理系统--添加用户</h2>
                <div id="returnInfo" style="width: 180px;height: 30px;margin-left: 220px;line-height: 30px;"></div>
                <span class="pull-right" id="checkResult" style="margin-right: 20px">&nbsp;&nbsp;</span>
                <form action="${pageContext.request.contextPath}/adduser" method="post" class="loginform" onsubmit="return adduser()">
                        <div class="input-prepend" title="Username">
                        	<span class="add-on"><i class="icon-user"></i></span>
                            <input class="input-large span10" name="username" id="username" 
                            type="text" placeholder="用户名" onkeyup="check()"/>
                        </div> 
                        <div class="clearfix"></div>
                        <div class="input-prepend" title="Password">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <input class="input-large span10" name="password" id="password" 
                            type="password" placeholder="密码"/>
                        </div>
                        <div class="input-prepend" title="Password">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <input class="input-large span10" name="password2" id="password2" 
                            type="password" placeholder="重复密码"/>
                        </div>
                        <div class="btn-group button-login">
                            <button type="submit" class="btn btn-primary" id="addbtn">添加</button>
                        </div>
                        <div class="clearfix" ></div>
                </form>
            </div>
        </div>
    </div>
</div>
<span id="msg" style="display: none">${msg}</span>
<jsp:include page="footer.jsp"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    function check(){
        var name = $("#username").val();
        $.get({
            url:"${pageContext.request.contextPath}/checkUserName",
            data:{"username":name},
            success:function(result){
                if(result == "该用户名已存在，请更换！"){
                    $("#returnInfo").text(result);
                    $("#returnInfo").css("color","red");
                }else{
                    $("#returnInfo").text(result);
                    $("#returnInfo").css("color","green");
                }
            }
        });
    }
</script>
<script type="text/javascript">
    var msg = document.getElementById("msg").innerText;
    if(msg != ''){
        if(msg == '信息插入成功！'){
            alert(msg);
            location.href="${pageContext.request.contextPath}/userlist";
        }else{
            alert(msg);
        }
    }
</script>
</body>
</html>