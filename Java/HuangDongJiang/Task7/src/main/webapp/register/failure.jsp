<%--
  Created by IntelliJ IDEA.
  User: CH0918
  Date: 2018/7/19
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>注册成功</title>
<head>
<script type="text/javascript">
    function countDown(secs,surl){
        //alert(surl);
        var jumpTo = document.getElementById('jumpTo');
        jumpTo.innerHTML=secs;
        if(--secs>0){
            setTimeout("countDown("+secs+",'"+surl+"')",1000);
        }
        else
        {
            location.href=surl;
        }
    }
</script>
</head>
<body>注册失败，<a href="register.jsp">点击返回注册页面</a><br>
<span id="jumpTo" >3</span>秒后自动跳转到注册页面...
<script type="text/javascript">
    countDown(3,'${pageContext.request.contextPath}/register/register.jsp');
</script>
</body>
</html>
