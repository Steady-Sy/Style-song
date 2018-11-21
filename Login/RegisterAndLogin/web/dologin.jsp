<%--
  Created by IntelliJ IDEA.
  User: Steady
  Date: 2018/11/19
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>确认登录</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String userName="";
        String passWord="";
        userName=request.getParameter("username");
        passWord=request.getParameter("password");

        if("admin".equals(userName)&&"admin".equals(passWord))
        {
            session.setAttribute("loginUser", userName);
            request.getRequestDispatcher("login_success.jsp").forward(request, response);

        }
        else
        {
            response.sendRedirect("login_failure.jsp");
        }
    %>
</body>
</html>
