<%--
  Created by IntelliJ IDEA.
  User: lanou3g
  Date: 2018/1/3
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--设置错误处理页面
    当1_hello页面出现异常时，会自动转发到2_error
--%>
<%@ page errorPage="2_error.jsp" %>
<html>
<head>
    <title>1_Hello</title>
</head>
<body>
    <%
        Object attribute = request.getAttribute("user");
        int a =10/0;
        System.out.println(a);
    %>

        a的值为:<%=a%>

    <%!
        //是在类中的
        public void  dodo(){
            this.name="张三";
            System.out.println(this.name);
        }
        //这就是定义的成员变量
        private String name;
    %>



</body>
</html>
