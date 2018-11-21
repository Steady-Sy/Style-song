<%--
  Created by IntelliJ IDEA.
  User: Steady
  Date: 2018/11/19
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Users" class="com.cn.xtu.Users" scope="page"/>
<jsp:useBean id="UsersDao" class="com.cn.sy.UsersDao" scope="page"/>
<jsp:setProperty name="Users" property="*" />
<html>
<head>
    <title>确认登录</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");

//                 String userName="";
//                String passWord="";
//                userName=request.getParameter("username");
//                passWord=request.getParameter("password");


        if(UsersDao.userLogin(Users))
        {
            session.setAttribute("loginUser", Users.getName());
            //服务器内部跳转
            request.getRequestDispatcher("login_success.jsp").forward(request, response);

        }
        else
        {
            //重定向
            response.sendRedirect("login_failure.jsp");
        }
    %>
</body>
</html>
