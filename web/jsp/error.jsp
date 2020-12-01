<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<jsp:include page="header.jsp"/>
<img style="width:100%;" src="images/exception.jpg">
<h1>出错啦！错误信息如下，请联系系统管理员！赵日天：13787286898 <a href="stulist">返回首页</a></h1>
<h1>${errorInfo}</h1>
<jsp:include page="footer.jsp"/>