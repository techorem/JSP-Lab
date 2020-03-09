<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: lilia
  Date: 07/03/2020
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>Homepage</title>
  </head>
  <body>
    <%

      /// display the date and hour ///

      Date date = new Date();
      out.print( "<h1 align = \"center\">" +date +"</h1>");

      /// display the 10 first integers ///

      for (int i=1; i <=10; i++) {
        out.println("<h2 align = \"center\">" + i + " " + "</h2>");
      }

      /// display the parameters of the URL ///

      String Params = "";

      for (Map.Entry<String, String[]> entry : request.getParameterMap().entrySet()) {
        String name = entry.getKey();
        String value = entry.getValue()[0];
        Params = Params.concat("<li>" + name + " : " + value + "</li>");
      }

      out.println("<ul>" + Params + "</ul>");












    %>
  </body>
</html>
