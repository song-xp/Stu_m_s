<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<head>
<meta charset="utf-8">
<title>修改用户信息</title>
<meta name="author" content="Lee Charles">
<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/userupdate.css" rel="stylesheet" type="text/css" />
</head>
<jsp:include page="header.jsp"/>
<div class="row-fluid sortable">
    <div class="box span12">
		<div class="box-header" data-original-title>
			<h2><a href="${pageContext.request.contextPath}/selectAll">主页</a> / 编辑学生信息</h2>
		</div>
		<div class="box-content">
				<span>当前用户：${user.username}</span><span class="pull-right">${datanow}</span>
		</div>
        <hr/>
        <div class="box-content">
            <form  action="${pageContext.request.contextPath}/userUpdate" method="post" id="userupdate">
                <input type="hidden" name="uid" value="${user.uid}" />
                <li>用户名：<input type="text" name="username" value="${user.username}" required /></li>
                <li>密码：<input type="password" name="password" value="${user.password}" required /></li>
                <li>
                    <input type="submit" value="修改" />
                    <input type="reset" value="重置" />
                </li>
            </form>
        </div>
    </div>
</div>
<span id="msg" style="display: none">${msg}</span>
<jsp:include page="footer.jsp"/>

<script type="text/javascript">
    var msg = document.getElementById("msg").innerText;
    if(msg != ''){
        if(msg == '信息更新成功！'){
            alert(msg);
            location.href="${pageContext.request.contextPath}/userlist";
        }else{
            alert(msg);
        }
    }
</script>