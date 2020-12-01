<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/stuLogin.css" />
</head>
<body>
<form action="${pageContext.request.contextPath}/stuLogin" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="sid" required="required" placeholder="用户名" /></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="sno" required="required" placeholder="密码" /></td>
        </tr>
    </table>
    <input type="reset" value="重置" />
    <input type="submit" value="登录" />
</form>

<span id="msg" style="display: none;">${msg}</span>

<a href="${pageContext.request.contextPath}/jsp/login.jsp" id="changeLogin">管理员登录</a>

<script type="text/javascript">
    var msg = document.getElementById("msg").innerText;
    if(msg != ''){
        alert(msg);
    }
</script>
</body>
</html>
