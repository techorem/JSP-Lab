/*package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;

@WebServlet(name = "Home", urlPatterns = {"/home"})
public class Home extends HttpServlet {

    public void init() {
        /// do nothing
    }


    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        /*
        Enumeration e = req.getParameterNames();
        Map<String,String> ListParams = null;


        while (e.hasMoreElements()) {
            String paramName = (String) e.nextElement();
            String[] values = req.getParameterValues(paramName);
            for (String value : values) {
                ListParams.put(paramName, value);
            }
        }

        out.println("<!DOCTYPE html>" +
                    "<html>" +
                    "<head>" +
                    "<title>Home</title>" +
                    "</head>" +
                    "Hello world from Home servlet!" +
                    "<ul>" +
                    "{ListParams}" +
                    "</ul>" +
                    "</body>" +
                    "</html>"
        );





        out.println("<h1>" + "test" + "</h1>");
        out.close();

    }

    public void destroy() {
        ///nothing again
    }
}*/

package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

// As of Servlet API 3.0, the @WebServlet annotation provides configuration
// settings that used to be included in the deployment descriptor web.xml.
// The annotation below conveys the same information as the following lines
// in the web.xml file in a much easier way:
//
// <servlet>
//    <servlet-name>Home</servlet-name>
//    <servlet-class>controller.Home</servlet-class>
// </servlet>
// <servlet-mapping>
//    <servlet-name>Home</servlet-name>
//    <url-pattern>/home</url-pattern>
// </servlet-mapping>

@WebServlet(name = "Home", urlPatterns = {"/home"})
public class Home extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>" +
                    "<html>" +
                    "<head>" +
                    "<title>Home</title>" +
                    "</head>" +
                    "Hello world from Home servlet!" +
                    "</body>" +
                    "</html>"
            );

        }

    }
}
