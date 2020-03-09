<%@ page import="javax.naming.Name" %><%--
  Created by IntelliJ IDEA.
  User: lilia
  Date: 08/03/2020
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="login.jsp" method="get">
    <table cellspacing="0" cellpadding="5" border="1">
        <tr>
            <td align="right">First Name :</td>
            <td><label>
                <input type="text" name="Name" id ="Name">
            </label></td>
        </tr>
        <tr>
            <td align="right">Last Name :</td>
            <td><label>
                <input type="text" name="Password" type="password" id="Password">
            </label></td>
        </tr>
        <tr>
            <td></td>
            <td align="left"> <input type="submit" value="Submit">
            </td>
        </tr>
    </table>
</form>
<%
    String Name= request.getParameter("Name") ;
    String Password= request.getParameter("Password") ;
    if (Name == null)
        Name = "   ";
    if (Password == null)
        Password = " ";
    if ((Name.equals(Password)))
    {
        RequestDispatcher rd = request.getRequestDispatcher("process.jsp");
        rd.forward(request, response);
    }
    if ((Password != " ")&&(!Name.equals(Password)))
    {
        out.println("<h1>" + "password and name doesn't correspond !" + "</H1>");
    }
%>
</body>
</html>




