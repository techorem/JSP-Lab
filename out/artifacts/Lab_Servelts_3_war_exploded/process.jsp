<%--
  Created by IntelliJ IDEA.
  User: lilia
  Date: 08/03/2020
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>process</title>
</head>
<body>
    <h1> Logged in: <%out.println(request.getParameter("Name"));%>   </h1>
    <form action="process.jsp" method="get">
        <input type="submit" value="Continue">
    </form>
    <form action="Logout.jsp" method="get">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
