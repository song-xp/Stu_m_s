<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<title>用户列表</title>
<meta name="author" content="Lee Charles">
<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script>
	    function real_del(){
			var rst_del=true;
			if(confirm("是否确定删除？")){
				return rst_del;
			}else{
				return rst_del=false;
			};
		}
    </script>
</head>
<jsp:include page="header.jsp"/>
<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><a href="${pageContext.request.contextPath}/selectAll">主页</a> / 用户信息管理</h2>
		</div>
		<div class="box-content">
				<span>当前用户：${user.username}</span>
				<c:if test="${user.username=='admin'}">
					<a href="${pageContext.request.contextPath}/userlist"><font color='green'>用户管理</font></a>
				</c:if> 
				<span class="pull-right">${datanow}</span>
		</div>
		<div class="box-content">
			<div>
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/jsp/adduser.jsp">添加用户</a>
			</div>

			<table style="margin-top: 10px"
				class="table table-striped table-bordered bootstrap-datatable datatable">
				<thead>
					<tr>
						<th>编号</th>
						<th>用户名</th>
						<th>添加时间</th>
						<th>最后登录时间</th>
						<th>登录次数</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${users}" var="user" varStatus="status">
					<tr>
						<td>${user.uid }</td>
						<td>${user.username }</td>
						<td>${user.addtime }</td>
						<td>${user.lasttime }</td>
						<td>${user.count }</td>
						<td>
							<a href="${pageContext.request.contextPath}/useredit?uid=${user.uid}" class="btn btn-success">更新</a>
							<a href="userdel?uid=${user.uid}" onclick="return real_del();" class="btn btn-danger">删除</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
		</div>
		<div class="col-sm-6">
                <div class="pagination pull-right">
                    <ul> 
                        <li class="prev"><a href="?start=${0}">首页</a></li>
                        <li class="prev"><a href="?start=${back}">上一页</a></li>
                        <li class="next"><a href="?start=${next}">下一页</a></li>
                        <li class="next"><a href="?start=${last}">末页</a></li>
                    </ul>
                </div>
        </div>
	</div>
</div>
<div class="box-content">
		<span>&nbsp;&nbsp;</span>
</div>

<span id="msg" style="display: none;">${msg}</span>
<jsp:include page="footer.jsp"/>

<script type="text/javascript">
	var msg = document.getElementById("msg").innerText;
	if(msg != ''){
		alert(msg);
	}
</script>