<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<head>
<meta charset="UTF-8">
<title>简历上传</title>
<meta name="author" content="Lee Charles">
<link id="bootstrap-style" href="css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function check(){
	    var isCheck = true;
		var stuname = document.getElementById("name").value;
		var stusex = document.getElementById("sex").value;
		var stuaddress = document.getElementById("address").value;
		var stuage = document.getElementById("age").value;
		var stuphone = document.getElementById("phone").value;
		var stuschool = document.getElementById("school").value;
		var stusub = document.getElementById("sub").value;
		var stuedu = document.getElementById("edu").value;
		var stuhighschool = document.getElementById("highschool").value;
		var stuuniversity = document.getElementById("university").value;
		var stuskill = document.getElementById("skill").value;
		var stuproject = document.getElementById("project").value;
		var stuintro = document.getElementById("intro").value;		
		if(stuname=="" || stusex=="" ||  stuaddress=="" || stuage=="" || stuphone=="" || stuschool=="" 
				|| stusub=="" ||stuedu=="" || stuhighschool=="" || stuuniversity==""
				|| stuskill==""|| stuproject==""|| stuintro==""){
			isCheck = false;
			alert("所有项目不能为空!");
		}
		return isCheck;
	}
</script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="row-fluid sortable" style="margin-left: 10px;">
    <div class="box span12">
		<div class="box-header" data-original-title>
			<h2><a href="stulist">主页</a> / 简历上传</h2>
		</div>
        <div class="box-content">
            <form  action="${pageContext.request.contextPath}/addResume" method="post" enctype="multipart/form-data" onsubmit="return check()">
                <fieldset>
				<div class="control-group">
				    <div class="controls">
				   <input value="${resume.sno}"  name="sno" id="sno" type="hidden" />
				        姓名：<input class="input-small span2" name="name" id="name" type="text" placeholder="姓名"/>
				        性别：<input class="input-small span2" name="sex" id="sex" type="text" placeholder="性别"/>
				        籍贯：<input class="input-small span2" name="address" id="address" type="text" placeholder="籍贯"/>
				        年龄：<input class="input-small span2" name="age" id="age" type="text" placeholder="年龄"/>
				    </div>
				</div>
				<div class="control-group">
				    <div class="controls">
				        电话：<input class="input-small span2" name="phone" id="phone" type="text" placeholder="电话"/>
				        院校：<input value="湖南信息职业技术学院" class="input-small span2" name="school" id="school" type="text" placeholder="毕业院校"/>
				        专业：<input class="input-small span2" name="sub" id="sub" type="text" placeholder="专业"/>
				        学历：<input value="大学专科" class="input-small span2" name="edu" id="edu" type="text" placeholder="学历"/> 
				    </div>
				</div>
				<div class="control-group">
				    <div class="controls">
				        教育背景（高中）：<input value="" class="input-small span3" name="highschool" id="highschool" type="text" placeholder="示例：2013.8-2016.6 长沙市地质中学"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				        教育背景（大学）：<input value="" class="input-small span3" name="university" id="university" type="text" placeholder="示例：2016.8-2019.6 湖南信息职业技术学院"/>
				    </div>
				</div>

					<div class="control-group">
						<div class="controls">
							照片：<input class="input-small span3" name="file" id="photo" type="file" />
						</div>
					</div>

				<div class="control-group">
				    <div class="controls">
				        专业技能：<textarea value="" class="input-medium span8" rows="3" name="skill" id="skill"  placeholder="示例：熟练使用Spring、SpringMVC、Mybatis框架；熟练使用 JSP、Servlet； 熟练使用 MySQL数据库；熟练使用HTML、CSS、JavaScript、JQuery、Ajax前端技术； 熟悉solr全文搜索引擎工具包。熟悉Web Service技术。 熟悉使用SVN、Git、Maven等项目开发及管理工具。熟悉Linux常用命令，能在Linux环境下进行简单开发。了解redis数据库及其缓存应用。"></textarea>
				    </div>
				</div>
				<div class="control-group">
				    <div class="controls">
				        项目经历：<textarea value="" class="input-medium span8" rows="4" name="project" id="project"  placeholder="示例： 项目介绍:1.首页学生管理：学生列表、新增学生、删除学生、编辑修改学生等
2.用户管理：管理员登录后可以管理用户、新增、删除、修改用户等
3.简历管理：用户登录后可以查看、新增上传、修改、删除学生简历
4.其他功能：登录时可以记住密码，完善的用户权限管理功能"></textarea>
				    </div>
				</div>	
				<div class="control-group">
				    <div class="controls">
				        自我评价：<textarea value="" class="input-medium span8" rows="3" name="intro" id="intro"  placeholder="示例：大家好，我姓黄，红绿灯的黄。大学期间，我热爱学习，拥护中国共产党的领导，吃苦耐劳，抗压能力强，能适应长时间的加班。能接受长期出差。这个项目我要求大家一个礼拜之内做完，我不要我觉得，我要我觉得，听我的，我说了算，做完，一个礼拜全部全部做完！"></textarea>
				    </div>
				</div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">上传</button>
                    <button type="reset" class="btn">重置</button>
                </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

<span id="msg" style="display: none;">${msg}</span>
<jsp:include page="footer.jsp"/>

<script>
	var msg = document.getElementById("msg").innerText;
	if(msg != ''){
		alert(msg);
		location.href="${pageContext.request.contextPath}/selectAll";
	}
</script>
</body>