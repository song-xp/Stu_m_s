<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<head>
<meta charset="utf-8">
<title>学生列表</title>
<meta name="author" content="Lee Charles">
<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function check(){
	    var isCheck = true;
		var stuno = document.getElementById("stuno").value;
		var stuname = document.getElementById("stuname").value;
		var stusex = document.getElementById("stusex").value;
		var stusub = document.getElementById("stusub").value;
		var stuclass = document.getElementById("stuclass").value;
		var stuphone = document.getElementById("stuphone").value;
		var stuaddress = document.getElementById("stuphone").value;
		if(stuno=="" || stuname=="" || stusex=="" || stusub=="" || stuclass=="" || stuphone=="" || stuaddress==""){
			isCheck = false;
			alert("所有项目不能为空!");
		}
		return isCheck;
	}
</script>
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
            <form  action="${pageContext.request.contextPath}/update" method="post" onsubmit="return check()">
                <fieldset>
                    <jsp:include page="form.jsp"/>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">修改</button>
                        <button type="reset" class="btn">重置</button>
                    </div>
                </fieldset>
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
            location.href="${pageContext.request.contextPath}/selectAll";
        }else{
            alert(msg);
        }
    }
</script>