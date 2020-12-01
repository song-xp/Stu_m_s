<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<title>学生列表</title>
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
			<h2><a href="${pageContext.request.contextPath}/selectAll">主页</a> / 学生信息管理</h2>
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
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/jsp/add.jsp">添加学生</a>
			</div>

			<table style="margin-top: 10px"
				class="table table-striped table-bordered bootstrap-datatable datatable">
				<thead>
					<tr>
						<th>编号</th>
						<th>学生学号</th>
						<th>学生姓名</th>
						<th>性别</th>
						<th>专业</th>
						<th>班级</th>
						<th>联系电话</th>
						<th>生源地</th>
						<th>简历管理</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${students}" var="stu" varStatus="status">
					<tr>
						<td>${stu.sid }</td>
						<td>${stu.sno }</td>
						<td>${stu.stuname }</td>
						<td>${stu.stusex }</td>
						<td>${stu.stusub }</td>
						<td>${stu.stuclass }</td>
						<td>${stu.stuphone }</td>
						<td>${stu.stuaddress }</td>
						<td>
							<a href="${pageContext.request.contextPath}/getResume?sno=${stu.sno}" class="btn inverse">查看</a> 
							<a href="${pageContext.request.contextPath}/resumeEdit?sno=${stu.sno}"  class="btn btn-primary">上传</a>
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/stuedit?sid=${stu.sid}" class="btn btn-success">更新</a>
							<a href="${pageContext.request.contextPath}/studel?sid=${stu.sid}" onclick="return real_del();" class="btn btn-danger">删除</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
		</div>
		<div class="col-sm-6">
                <div class="pagination pull-right">
                    <ul> 
                        <li class="prev"><a href="?start=0">首页</a></li>

						<li class="prev">
							<a href="?start=<c:if test="${page.start-page.count < 0}">0</c:if>
							<c:if test="${page.start-page.count >= 0}">${page.start-page.count}</c:if>">上一页</a>
						</li>

						<li class="next">
						<a href="?start=<c:if test="${page.start+page.count >= page.last}">${page.last}</c:if>
							<c:if test="${page.start+page.count < page.last}">${page.start+page.count}</c:if>">下一页</a>
						</li>
                        <%--<li class="prev"><a href="?start=${page.start-page.count}">上一页</a></li>--%>
                        <%--<li class="next"><a href="?start=${page.start+page.count}">下一页</a></li>--%>
                        <li class="next"><a href="?start=${page.last}">末页</a></li>
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

<script>
    var msg = document.getElementById("msg").innerText;
    if(msg != ''){
        alert(msg);
    }
</script>