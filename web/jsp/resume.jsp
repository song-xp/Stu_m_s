<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>个人简历</title>
<meta charset=UTF-8 />
<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<style type=text/css>
* {
	margin: 0;
	padding: 0;
	border: none;
	font-size: 12px;
}

#jianil {
	width: 797px;
	margin: 0 auto;
	border: solid 1px #DCDDDF;
}

#jianil .one {
	background: url(images/toubu.jpg);
	width: 797px;
	height: 90px;
	font-size: 30px;
	color: white;
	font-weight: bold;
	text-align: center;
	margin-bottom: 0;
	line-height: 90px;
}

#jianil ul {
	width: 771px;
	margin-left: 13px;
	margin-top: 40px;
}

#jianil ul li {
	font-size: 20.5px;
	background: url(images/tubiao.jpg) no-repeat;
	list-style: none;
	text-indent: 1.8em;
	line-height: 30px;
	margin-bottom: 20px;
	border-bottom: 1px solid #DCDDDF;
}

#jianil ul li.none1 {
	border-bottom: none;
}

#jianil ul li p {
	font-size: 15px;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="box-header" data-original-title>
	<h2><a style="font-size: 16px;" href="${pageContext.request.contextPath}/selectAll">主页</a> / 简历查看</h2>
	<div class="pull-right">
		<a style="font-size: 16px;" href="#">编辑</a>
		<a style="font-size: 16px;" href="#">删除</a>
	</div>
</div>
	<div id="jianil">
		<div class="one">个人简历</div>
		<ul>
			<li>个人信息
				<p style="float: right;margin-right: 30px;margin-top: -20px">
				<img width="125px" height="160px" src="uploaded/${resume.photo}"/></p>
				<p>姓名:${resume.name}&nbsp;&nbsp;&nbsp;性别:${resume.sex}&nbsp;&nbsp;&nbsp;籍贯:${resume.address}&nbsp;&nbsp;&nbsp;年龄:${resume.age}</p>
				<p>手机:${resume.phone} </p>
				<p>毕业院校：${resume.school} </p>
				<p>专业:${resume.sub} &nbsp;学历:${resume.edu} </p>
			</li>
			<li>教育背景
				<p>${resume.highschool}</p>
				<p>${resume.university}</p>
			</li>
			<li>专业技能
				<p>${resume.skill}</p>
			</li>
			<li>项目经历
			    <p>${resume.project}</p>
			</li>
			<li >自我评价
				<p>${resume.intro}</p>
			</li>
		</ul>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
